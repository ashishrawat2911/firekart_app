import User from '../models/User'
import UserRepository from "../repository/userRepository";
import {createJWT} from "../utils/jwtUtils";

export default class UserService {
    constructor(private userRepository: UserRepository) {
    }

    async generateOTP(phoneNumber: string): Promise<string> {
        const otp = Math.floor(1000 + Math.random() * 9000).toString();
        await this.userRepository.addOTPByPhoneNumber(phoneNumber, otp);
        return otp;
    }

    async verifyOTP(phoneNumber: string, otp: string): Promise<boolean> {
        try {
            const storedOTP = await this.userRepository.getOTPByPhoneNumber(phoneNumber);
            if (!storedOTP) {
                return false;
            }
            if (storedOTP === otp) {
                await this.userRepository.deleteOTPByPhoneNumber(phoneNumber);
                return true;
            }

            return false;
        } catch (error) {
            console.error('An error occurred while verifying OTP:', error);
            return false;
        }
    }


    async getUserByPhoneNumber(phoneNumber: string): Promise<User | null> {
        return this.userRepository.getUserByPhoneNumber(phoneNumber);
    }

    async createUser(phoneNumber: string): Promise<User | null> {
        await this.userRepository.addUserByPhoneNumber(phoneNumber)
        return await this.getUserByPhoneNumber(phoneNumber);
    }

    async createUserIfNotPresent(phoneNumber: string): Promise<string> {
        let user = await this.getUserByPhoneNumber(phoneNumber);
        if (!user) {
            user = await this.createUser(phoneNumber)
        }
        return createJWT(user!.id);
    }
}