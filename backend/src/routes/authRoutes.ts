import express from 'express';
import {
    addAddress, editAddress,
    fetchUserAddress,
    fetchUserDetails,
    loginWithPhoneNumber, updateDefaultAddress,
    verifyOTPAndLogin
} from '../controllers/authController';
import {validateLoginPhoneNumber, validateOTPAndLogin} from "../middlewares/validators/authValidators";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";

const router = express.Router();

router.post('/login', validateLoginPhoneNumber, loginWithPhoneNumber);
router.post('/verify-otp', validateOTPAndLogin, verifyOTPAndLogin);
router.get('/userDetails', authenticateMiddleware, fetchUserDetails);
router.get('/userAddress', authenticateMiddleware, fetchUserAddress);
router.post('/addAddress', authenticateMiddleware, addAddress);
router.post('/editAddress', authenticateMiddleware, editAddress);
router.get('/updateDefaultAddress', authenticateMiddleware, updateDefaultAddress);

export default router;
