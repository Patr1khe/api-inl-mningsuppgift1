import express from 'express'
import { body } from 'express-validator'
import { index, store, show, template } from '../controllers/products_controller'
import { createProductRules } from "../validations/products_rules"
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

], createProductRules, store)

/**
 * POST /products/template
 */
router.post('/template', template)


export default router