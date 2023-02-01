import express from "express"
// import resource from './_router'
import products from './products'

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
router.use('/products', products)

/**
 * [EXAMPLE] /resource
 */
// router.use('/resource', resource)



export default router
