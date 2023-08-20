import express from 'express';
import {loginWithPhoneNumber, verifyOTPAndLogin} from '../controllers/AuthController';

const router = express.Router();

router.post('/login', loginWithPhoneNumber);
router.post('/verify-otp', verifyOTPAndLogin);

export default router;
