"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.validateAddressId = exports.validateAddress = exports.validateOTPAndLogin = exports.validateLoginPhoneNumber = void 0;
const express_validator_1 = require("express-validator");
exports.validateLoginPhoneNumber = [
    (0, express_validator_1.body)('phoneNumber').notEmpty().withMessage('Invalid phone number'),
];
exports.validateOTPAndLogin = [
    (0, express_validator_1.body)('phoneNumber').notEmpty().withMessage('Invalid phone number'),
    (0, express_validator_1.body)('otp').notEmpty().isNumeric().withMessage('Invalid OTP'),
    (0, express_validator_1.body)('deviceToken').notEmpty().withMessage('Invalid Device Token'),
];
exports.validateAddress = [
    (0, express_validator_1.body)('name').notEmpty().withMessage('Invalid name'),
    (0, express_validator_1.body)('pincode').notEmpty().isNumeric().withMessage('Invalid pincode'),
    (0, express_validator_1.body)('address').notEmpty().isNumeric().withMessage('Invalid address'),
    (0, express_validator_1.body)('city').notEmpty().isNumeric().withMessage('Invalid city'),
    (0, express_validator_1.body)('phoneNumber').notEmpty().isNumeric().withMessage('Invalid phoneNumber'),
    (0, express_validator_1.body)('isDefault').notEmpty().isBoolean().withMessage('Invalid isDefault'),
];
exports.validateAddressId = [
    (0, express_validator_1.body)('id').notEmpty().withMessage('Invalid Address Id'),
];
