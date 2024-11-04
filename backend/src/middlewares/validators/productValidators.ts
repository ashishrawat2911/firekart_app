import {body} from 'express-validator';


export const validateFetchAllProducts = [
    body('page').notEmpty().isNumeric().withMessage('Invalid page'),
    body('offset').notEmpty().isNumeric().withMessage('Invalid offset'),
];

