import express from 'express'
import { body, validationResult } from 'express-validator'
import { Request, Response } from 'express'
import { index, store, show } from '../controllers/orders_controller'
import { createOrderRules } from "../validations/orders_rules"
import { prisma } from '@prisma/client'
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

], createOrderRules, store)



export default router