"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.editAddress = exports.updateDefaultAddress = exports.addAddress = exports.fetchUserAddress = exports.fetchUserDetails = exports.verifyOTPAndLogin = exports.loginWithPhoneNumber = void 0;
const apiResponse_1 = __importDefault(require("../response/apiResponse"));
const apiResponseMessages_1 = __importDefault(require("../response/apiResponseMessages"));
const express_validator_1 = require("express-validator");
const jwtUtils_1 = require("../utils/jwtUtils");
const di_1 = require("../di/di");
const loginWithPhoneNumber = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const error = (0, express_validator_1.validationResult)(req);
        if (!error.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.phoneNumberNotValid, error);
        }
        const { phoneNumber } = req.body;
        const otp = yield di_1.userService.generateOTP(phoneNumber);
        const user = yield di_1.userService.getUserByPhoneNumber(phoneNumber);
        return apiResponse_1.default.success(res, "OTP sent successfully", { otp: otp, newUser: user === null });
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.loginWithPhoneNumber = loginWithPhoneNumber;
const verifyOTPAndLogin = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.phoneNumberOrOTPNotValid, errors);
        }
        const { phoneNumber, otp, name } = req.body;
        let user = yield di_1.userService.getUserByPhoneNumber(phoneNumber);
        if (!user) {
            if (!name) {
                return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.userNameNotProvided, errors);
            }
        }
        const isOTPValid = yield di_1.userService.verifyOTP(phoneNumber, otp);
        if (isOTPValid) {
            if (!user) {
                user = yield di_1.userService.createUser(phoneNumber, name);
            }
            const token = yield (0, jwtUtils_1.createJWT)(user.id);
            return apiResponse_1.default.success(res, apiResponseMessages_1.default.loggedInSuccessfully, { token, user });
        }
        else {
            return apiResponse_1.default.unauthorized(res, apiResponseMessages_1.default.invalidOTP);
        }
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.verifyOTPAndLogin = verifyOTPAndLogin;
const fetchUserDetails = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const userId = req.userId;
        const user = yield di_1.userService.getUserById(userId);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.userFetchedSuccessfully, user);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.fetchUserDetails = fetchUserDetails;
const fetchUserAddress = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const userId = req.userId;
        const user = yield di_1.userService.getAddressesByUser(userId);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.addressFetchedSuccessfully, user);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.fetchUserAddress = fetchUserAddress;
const addAddress = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.addressNotValid, errors);
        }
        const userId = req.userId;
        const address = req.body;
        const user = yield di_1.userService.addAddress(userId, address);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.addressAddedSuccessfully, user);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.addAddress = addAddress;
const updateDefaultAddress = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.addressIdNotValid, errors);
        }
        const userId = req.userId;
        const { addressId } = req.params;
        // Call the service function to update the default address
        const data = yield di_1.userService.updateAddressToDefault(Number(addressId), Number(userId));
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.addressUpdatedSuccessfully, data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.updateDefaultAddress = updateDefaultAddress;
const editAddress = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.addressIdNotValid, errors);
        }
        const address = req.body;
        const userId = req.userId;
        const data = yield di_1.userService.editAddress(userId, address);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.addressUpdatedSuccessfully, data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.editAddress = editAddress;
