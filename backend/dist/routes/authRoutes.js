"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const authController_1 = require("../controllers/authController");
const authValidators_1 = require("../middlewares/validators/authValidators");
const authMiddlewares_1 = require("../middlewares/authMiddlewares");
const router = express_1.default.Router();
router.post('/login', authValidators_1.validateLoginPhoneNumber, authController_1.loginWithPhoneNumber);
router.post('/verify-otp', authValidators_1.validateOTPAndLogin, authController_1.verifyOTPAndLogin);
router.get('/userDetails', authMiddlewares_1.authenticateMiddleware, authController_1.fetchUserDetails);
router.get('/userAddress', authMiddlewares_1.authenticateMiddleware, authController_1.fetchUserAddress);
router.post('/addAddress', authValidators_1.validateAddress, authMiddlewares_1.authenticateMiddleware, authController_1.addAddress);
router.post('/editAddress', authValidators_1.validateAddressId, authMiddlewares_1.authenticateMiddleware, authController_1.editAddress);
router.get('/updateDefaultAddress', authValidators_1.validateAddressId, authMiddlewares_1.authenticateMiddleware, authController_1.updateDefaultAddress);
//TODO Add User Name update
exports.default = router;
