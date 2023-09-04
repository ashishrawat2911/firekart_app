"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.validateFetchAllProducts = void 0;
const express_validator_1 = require("express-validator");
exports.validateFetchAllProducts = [
    (0, express_validator_1.body)('page').notEmpty().isNumeric().withMessage('Invalid page'),
    (0, express_validator_1.body)('offset').notEmpty().isNumeric().withMessage('Invalid offset'),
];
