import { debug } from 'console'
import { Request, Response } from 'express'
import { validationResult } from 'express-validator'
import prisma from '../prisma'


/**
 * GET all products
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
        const products = await prisma.product.findMany()
        res.send(products)
    }catch (err) {
        res.status(500).send({ message: "Something went wrong, double check please! "})
    }
}


/**
 * Create a product
 */

export const store = async (req: Request, res: Response) => {
    const validationFails = validationResult(req)
    if (!validationFails.isEmpty()) {
        return res.status(400).send({
            status: "fail",
            data: validationFails.array(),
        })
    }
    const {name, description, price, images, stock_status, stock_quantity } = req.body
    try {
        const products = await prisma.product.create({
            data: {
                name,
                description,
                price,
                images,
                stock_status,
                stock_quantity,
            }
        })
        console.log(products)
        res.status(201).send({ status: "success", data: products })      

    } catch (err) {
        debug(err)
        return res.status(500).send({ status: "error", message: "Could not create product in database"})
    }
 
}

