import express from 'express';
import {fetchUserDetails, loginWithPhoneNumber, verifyOTPAndLogin} from '../controllers/authController';
import {validateLoginPhoneNumber, validateOTPAndLogin} from "../middlewares/validators/authValidators";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";

const router = express.Router();

router.post('/login', validateLoginPhoneNumber, loginWithPhoneNumber);
router.post('/verify-otp', validateOTPAndLogin, verifyOTPAndLogin);
router.get('/userDetails', authenticateMiddleware, fetchUserDetails);

export default router;
