import express from "express"
// import resource from './_router'
import products from './products'
import orders from './orders'
import { createOrderRules } from "../validations/orders_rules"
import { createProductRules } from "../validations/products_rules"

// instantiate a new router
const router = express.Router()

/**
 * GET /
 */
router.get('/', (req, res) => {
	res.send({
		message: "I AM API, BEEP BOOP",
	})
})

/**
 * /products
 */
router.use('/products', [

], createProductRules, products)

/**
 * /orders
 */
router.use('/orders', [

], createOrderRules, orders)

/**
 * [EXAMPLE] /resource
 */
// router.use('/resource', resource)



export default router
