import {body} from 'express-validator';

export const validatePlaceOrder = [
    body('price').isNumeric().withMessage('Invalid price'),
    body('orderItems.*.productId').isNumeric().withMessage('Invalid orderItems productId'),
    body('orderItems.*.price').isNumeric().withMessage('Invalid orderItems price'),
    body('orderItems.*.noOfItems').isNumeric().withMessage('Invalid orderItems noOfItems'),
    body('orderedAt').notEmpty().withMessage('Invalid orderedAt'),
    body('orderStatus').notEmpty().withMessage('Invalid orderStatus'),
    body('paymentId').notEmpty().withMessage('Invalid paymentId'),
    body('signature').notEmpty().withMessage('Invalid signature'),
];

