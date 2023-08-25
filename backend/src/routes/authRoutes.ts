import express from 'express';
import {
    fetchUserAddress,
    fetchUserDetails,
    loginWithPhoneNumber,
    verifyOTPAndLogin
} from '../controllers/authController';
import {validateLoginPhoneNumber, validateOTPAndLogin} from "../middlewares/validators/authValidators";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";

const router = express.Router();

router.post('/login', validateLoginPhoneNumber, loginWithPhoneNumber);
router.post('/verify-otp', validateOTPAndLogin, verifyOTPAndLogin);
router.get('/userDetails', authenticateMiddleware, fetchUserDetails);
router.get('/userAddress', authenticateMiddleware, fetchUserAddress);

export default router;
