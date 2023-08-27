"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.validateOTPAndLogin = exports.validateLoginPhoneNumber = void 0;
const express_validator_1 = require("express-validator");
exports.validateLoginPhoneNumber = [
    (0, express_validator_1.body)('phoneNumber').notEmpty().withMessage('Invalid phone number'),
];
exports.validateOTPAndLogin = [
    (0, express_validator_1.body)('phoneNumber').notEmpty().withMessage('Invalid phone number'),
    (0, express_validator_1.body)('otp').notEmpty().isNumeric().withMessage('Invalid OTP'),
];
