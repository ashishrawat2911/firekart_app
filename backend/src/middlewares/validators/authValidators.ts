import {body} from 'express-validator';

export const validateLoginPhoneNumber = [
    body('phoneNumber').notEmpty().withMessage('Invalid phone number'),
];

export const validateOTPAndLogin = [
    body('phoneNumber').notEmpty().withMessage('Invalid phone number'),
    body('otp').notEmpty().isNumeric().withMessage('Invalid OTP'),
    body('deviceToken').notEmpty().withMessage('Invalid Device Token'),
];


export const validateAddress = [
    body('name').notEmpty().withMessage('Invalid name'),
    body('pincode').notEmpty().isNumeric().withMessage('Invalid pincode'),
    body('address').notEmpty().isNumeric().withMessage('Invalid address'),
    body('city').notEmpty().isNumeric().withMessage('Invalid city'),
    body('phoneNumber').notEmpty().isNumeric().withMessage('Invalid phoneNumber'),
    body('isDefault').notEmpty().isBoolean().withMessage('Invalid isDefault'),
];
export const validateAddressId = [
    body('id').notEmpty().withMessage('Invalid Address Id'),
];

