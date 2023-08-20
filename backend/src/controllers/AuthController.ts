import {Request, Response} from 'express';
import UserService from '../service/userService';
import {createToken} from '../utils/jwtUtils';

const userService = new UserService();

export const loginWithPhoneNumber = async (req: Request, res: Response) => {
    try {
        const {phoneNumber} = req.body;
        const otp = await userService.generateOTP(phoneNumber);
        return res.status(200).json({otp});
    } catch (error) {
        console.error(error)
        return res.status(500).json({message: 'An error occurred'});
    }
};

export const verifyOTPAndLogin = async (req: Request, res: Response) => {
    try {
        const {phoneNumber, otp} = req.body;
        const isOTPValid = await userService.verifyOTP(phoneNumber, otp);

        if (isOTPValid) {
            // User verified, generate JWT token and send it
            let user = await userService.getUserByPhoneNumber(phoneNumber);
            if (!user) {
                user = await userService.createUser(phoneNumber)
            }

            const token = createToken(user!.id);
            return res.status(200).json({token});
        } else {
            return res.status(401).json({message: 'Invalid OTP or user not found'});
        }
    } catch (error) {
        console.error(error)
        return res.status(500).json({message: 'An error occurred'});
    }
};

