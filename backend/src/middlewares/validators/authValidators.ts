import {body} from 'express-validator';

export const validateLoginPhoneNumber = [
    body('phoneNumber').notEmpty().withMessage('Invalid phone number'),
];

export const validateOTPAndLogin = [
    body('phoneNumber').notEmpty().withMessage('Invalid phone number'),
    body('otp').notEmpty().isNumeric().withMessage('Invalid OTP'),
];

