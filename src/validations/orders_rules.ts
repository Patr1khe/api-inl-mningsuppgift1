import {body} from 'express-validator'

export const createOrderRules = [
    body('customer_first_name').isString().withMessage('has to be a string').bail().notEmpty().withMessage('You cant have empty string').isLength({min:3}).withMessage('atleast 3 letters or More!'),
    body('customer_last_name').isString().withMessage('has to be a string').bail().notEmpty().withMessage('You cant have empty string').isLength({min:3}).withMessage('atleast 3 letters or More!'),
    body('customer_address').isString().withMessage('has to be a string').bail().notEmpty().withMessage('You cant have empty string').isLength({min:3}).withMessage('atleast 3 letters or More!'),
    body('customer_postcode').isString().withMessage('has to be a string and without any spacesbar').bail().isNumeric().withMessage('only number digits no spacesbar').isLength({min:4, max:6}).withMessage('postcode have to be 4-6 number digits only'),
    body('customer_city').isString().withMessage('has to be a string').bail().notEmpty().withMessage('You cant have empty string').isLength({min:3}).withMessage('atleast 3 letters or More!'),
    body('customer_email').isEmail().withMessage('has to be a email').bail(),
    body('customer_phone').optional().custom(async () => {
        const customer_phone = null
        if (customer_phone) {
            return customer_phone
        }
    }).withMessage('has to be a string').bail(),
    body('order_total').isInt({min: 1}).withMessage('order_total has to be higher value than 0').bail().not().isString().withMessage('You cant have string'),
    body('order_items').isArray().withMessage('has to be a array').bail().notEmpty().withMessage('you need to add orderItems property'),
    body('order_items.*.product_id').isInt({min:1}).withMessage('product_id has to be higher value than 0').bail().not().isString().withMessage('You cant have string'),
    body('order_items.*.qty').isInt({min:1}).withMessage('qty has to be higher value than 0').bail().not().isString().withMessage('You cant have string'),
    body('order_items.*.item_price').isInt({min: 1}).withMessage('item_price has to be higher value than 0').bail().not().isString().withMessage('You cant have string'),
    body('order_items.*.item_total').isInt({min: 1}).withMessage('item_total has to be higher value than 0').bail().not().isString().withMessage('You cant have string'),
]