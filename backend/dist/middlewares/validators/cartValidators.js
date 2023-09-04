"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.validateUpdateCart = exports.validateDeleteFromCart = exports.validateAddToCart = void 0;
const express_validator_1 = require("express-validator");
exports.validateAddToCart = [
    (0, express_validator_1.body)('productId').notEmpty().withMessage('Invalid product Id'),
];
exports.validateDeleteFromCart = [
    (0, express_validator_1.body)('productId').notEmpty().withMessage('Invalid product Id'),
];
exports.validateUpdateCart = [
    (0, express_validator_1.body)('productId').notEmpty().withMessage('Invalid product Id'),
    (0, express_validator_1.body)('quantity').notEmpty().isNumeric().withMessage('Invalid quantity'),
];
