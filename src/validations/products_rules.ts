import {body} from 'express-validator'

export const createProductRules = [
    body('name').exists().isString().withMessage('has to be a string').bail().isLength({min: 3, max:100}).withMessage('has to be 3-100 chars long'),
    body('description').exists().isString().withMessage('has to be a string text').bail().isLength({min:20, max: 1000}).withMessage('has to be 20-1000 chars long'),
    body('price').exists().isInt({min:1}).withMessage('has to be a Integer value and need to be higher than 0').bail(),
    body('images').isObject().withMessage('has to be an object').bail(),
    body('images.large').isString().withMessage('has to be a string').bail().notEmpty().withMessage('You need to add image for large'),
    body('images.thumbnail').isString().withMessage('has to be a string').bail().notEmpty().withMessage('You need to add image for thumbnail'),
    body('stock_status').exists().isString().withMessage('has to be a string').bail().isIn(["instock","outofstock"]).withMessage('has to be "instock" or "outofstock"'),
    body('stock_quantity').custom(async () => {
        const stock_quantity = [Number, null]
        if (stock_quantity) {
            return stock_quantity
        }
    }).withMessage('has to be a value').bail().not().isString().withMessage('You cant have string').not().isArray().withMessage('You cant have array').not().contains('.').withMessage('You cant have dot (Integer)'),
]