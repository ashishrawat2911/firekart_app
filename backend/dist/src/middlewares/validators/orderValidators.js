"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.validatePlaceOrder = void 0;
const express_validator_1 = require("express-validator");
exports.validatePlaceOrder = [
    (0, express_validator_1.body)('price').isNumeric().withMessage('Invalid price'),
    (0, express_validator_1.body)('orderItems.*.productId').isNumeric().withMessage('Invalid orderItems productId'),
    (0, express_validator_1.body)('orderItems.*.price').isNumeric().withMessage('Invalid orderItems price'),
    (0, express_validator_1.body)('orderItems.*.noOfItems').isNumeric().withMessage('Invalid orderItems noOfItems'),
    (0, express_validator_1.body)('orderedAt').notEmpty().withMessage('Invalid orderedAt'),
    (0, express_validator_1.body)('orderStatus').notEmpty().withMessage('Invalid orderStatus'),
    (0, express_validator_1.body)('paymentId').notEmpty().withMessage('Invalid paymentId'),
    (0, express_validator_1.body)('signature').notEmpty().withMessage('Invalid signature'),
];
