import { debug } from 'console'
import { Request, Response } from 'express'
import { validationResult } from 'express-validator'
import prisma from '../prisma'

/**
 * GET all Orders
 */
export const index = async (req: Request,   res: Response) => {
    const validationFails = validationResult(req)
    if (!validationFails.isEmpty()) {
        return res.status(400).send({
            status: "fail",
            data: validationFails.array(),
        })
    }
    
    try {
        const orders = await prisma.order.findMany()
        res.send(orders)
    }catch (err) {
        res.status(500).send({status: "Error", message: "Something went wrong, double check your server please!"})
    }
}

/**
 * Create a order
 */

export const store = async (req: Request, res: Response) => {
    const validationFails = validationResult(req)
    if (!validationFails.isEmpty()) {
        return res.status(400).send({
            status: "fail",
            data: validationFails.array(),
        })
    }
    const {customer_first_name, customer_last_name, customer_address, customer_postcode, customer_city, customer_email, customer_phone, order_total, order_items } = req.body

    try {
        const orders = await prisma.order.create({
            data: {
                customer_first_name,
                customer_last_name,
                customer_address,
                customer_postcode,
                customer_city,
                customer_email,
                customer_phone,
                order_total,
                order_items: {
                    create: order_items,
                }
            },
            include: {
                order_items: true,
            }
        })
        console.log(orders)
        res.status(201).send({ status: "success", data: orders })      

    } catch (err) {
        debug(err)
        return res.status(500).send({ status: "error", message: "Could not create order in database"})
    }
}

/**
 * Get a order and include items
 */
export const show = async (req: Request, res: Response) => {
    const validationFails = validationResult(req)
    if (!validationFails.isEmpty()) {
        return res.status(400).send({
            status: "fail",
            data: validationFails.array(),
        })
    }

	const orderId = Number(req.params.orderId)
    

	try {
		const order = await prisma.order.findUniqueOrThrow({
			where: {
				id: orderId,
			},
            include: {
                order_items: true,
            }
		})

		res.status(200).send({
			status: "success",
			data: order,
		})

	} catch (err) {
		debug("Error thrown when finding order with id: %o", req.body.orderId, err)
		return res.status(404).send({status: "error", message: "Could Not find the order in database" })
	}
}


