import express from 'express';
import {
    addAddress,
    editAddress,
    fetchUserAddress,
    fetchUserDetails,
    loginWithPhoneNumber,
    updateDefaultAddress,
    verifyOTPAndLogin
} from '../controllers/authController';
import {
    validateAddress,
    validateAddressId,
    validateLoginPhoneNumber,
    validateOTPAndLogin
} from "../middlewares/validators/authValidators";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";

const router = express.Router();
router.post('/login', validateLoginPhoneNumber, loginWithPhoneNumber);
router.post('/verify-otp', validateOTPAndLogin, verifyOTPAndLogin);
router.get('/userDetails', authenticateMiddleware, fetchUserDetails);
router.get('/userAddress', authenticateMiddleware, fetchUserAddress);
router.post('/addAddress', validateAddress, authenticateMiddleware, addAddress);
router.post('/editAddress', validateAddressId, authenticateMiddleware, editAddress);
router.get('/updateDefaultAddress', validateAddressId, authenticateMiddleware, updateDefaultAddress);
//TODO Add User Name update
export default router;
