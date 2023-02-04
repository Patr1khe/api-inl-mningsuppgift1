import express from 'express'
import { body } from 'express-validator'
import { index, store, show } from '../controllers/orders_controller'
const router = express.Router()

/**
 * GET /orders
 */
router.get('/', index)

/**
 * GET /orders/:orderId
 */
router.get('/:orderId', show)


/**
 * POST /orders
 */
router.post('/', [
    body('customer_first_name').isString().withMessage('has to be a string').bail(),
    body('customer_last_name').isString().withMessage('has to be a string').bail(),
    body('customer_address').isString().withMessage('has to be a string').bail(),
    body('customer_postcode').isString().withMessage('has to be a string').bail().isLength({max:6}).withMessage('postcode max 6 number with string'),
    body('customer_city').isString().withMessage('has to be a string').bail(),
    body('customer_email').isEmail().withMessage('has to be a email').bail(),
    body('customer_phone').optional().custom(async () => {
        const customer_phone = null
        if (customer_phone) {
            return customer_phone
        }
    }).withMessage('has to be a string').bail(),
    body('order_total').isInt({min: 1}).withMessage('has to be a Integer value, higher than 0').bail(),
    body('product_id').isInt({min: 1}).withMessage('has to be a Integer value, higher than 0').bail(),
    body('qty').isInt({min: 1}).withMessage('has to be a Integer value, higher than 0').bail(),
    body('item_total').isInt({min: 1}).withMessage('has to be a Integer value, higher than 0').bail(),

], store)



export default router