import {body} from 'express-validator';

export const validateAddToCart = [
    body('productId').notEmpty().withMessage('Invalid product Id'),
];
export const validateDeleteFromCart = [
    body('productId').notEmpty().withMessage('Invalid product Id'),
];
export const validateUpdateCart = [
    body('productId').notEmpty().withMessage('Invalid product Id'),
    body('quantity').notEmpty().isNumeric().withMessage('Invalid quantity'),
];

