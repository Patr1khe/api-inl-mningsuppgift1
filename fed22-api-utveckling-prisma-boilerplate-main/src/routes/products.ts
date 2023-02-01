import express from 'express'
import { body } from 'express-validator'
import { index, store, show } from '../controllers/products_controller'
const router = express.Router()

/**
 * GET /products
 */
router.get('/', index)

/**
 * GET /products/:productId
 */
router.get('/:productId', show)

/**
 * POST /products
 */
router.post('/', [
    body('name').exists().isString().withMessage('has to be a string').bail().isLength({min: 3, max:100}).withMessage('has to be 3-100 chars long'),
    body('description').exists().isString().withMessage('has to be a string').bail().isLength({min:20, max: 1000}).withMessage('has to be 20-1000 chars long'),
    body('price').exists().isInt({min:1}).withMessage('has to be a value').bail().isLength({min:1}).withMessage('has to be atleast 1 value'),
    // body('images').isJSON().withMessage('has to be a JSON with objects array').bail(),
    body('stock_status').exists().isString().withMessage('has to be a string').bail(),
    body('stock_quantity').exists().isInt({min:1}).withMessage('has to be higher value than 0').bail(),
], store)


export default router