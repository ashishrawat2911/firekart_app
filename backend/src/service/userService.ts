import UserRepository from "../repository/userRepository";
import User from "../models/entity/User";
import Address from "../models/entity/Address";

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

    async getUserById(id: number): Promise<User | null> {
        return this.userRepository.getUserById(id);
    }

    async getAddressesByUser(userId: number): Promise<Address[]> {
        return this.userRepository.getAddressesByUserId(userId);
    }

    async createUser(phoneNumber: string, name: string): Promise<User | null> {
        await this.userRepository.addUserByPhoneNumber(phoneNumber, name)
        return await this.getUserByPhoneNumber(phoneNumber);
    }
}