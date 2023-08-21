import express from 'express';
import {loginWithPhoneNumber, verifyOTPAndLogin} from '../controllers/authController';
import {validateLoginPhoneNumber, validateOTPAndLogin} from "../middlewares/validators/authValidators";

const router = express.Router();

router.post('/login', validateLoginPhoneNumber, loginWithPhoneNumber);
router.post('/verify-otp', validateOTPAndLogin, verifyOTPAndLogin);

export default router;
