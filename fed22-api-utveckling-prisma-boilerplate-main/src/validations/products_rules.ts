import {body} from 'express-validator'

export const createProductRules = [
    body('name').exists().isString().withMessage('has to be a string').bail().isLength({min: 3, max:100}).withMessage('has to be 3-100 chars long'),
    body('description').exists().isString().withMessage('has to be a string text').bail().isLength({min:20, max: 1000}).withMessage('has to be 20-1000 chars long'),
    body('price').exists().isInt({min:1}).withMessage('has to be a Integer value and need to be higher than 0').bail(),
    // body('images').isObject().withMessage('has to be an object').bail().notEmpty().withMessage('you need to have image'),
    // body('large').isString().withMessage('has to be a string').bail().notEmpty(),
    // body('thumbnail').isString().withMessage('has to be a string').bail().notEmpty(),
    body('stock_status').exists().isString().withMessage('has to be a string').bail(),
    body('stock_quantity').custom(async () => {
        const stock_quantity = [Number, null]
        if (stock_quantity) {
            return stock_quantity
        }
    }).withMessage('has to be a value').bail(),
]