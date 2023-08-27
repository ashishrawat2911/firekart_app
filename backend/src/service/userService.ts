import UserRepository from "../repository/userRepository";
import User from "../models/entity/User";
import AddressResponseDTO from "../models/dto/response/AddressResponseDTO";
import {mapAddressToAddressResponseDTO} from "../mapper/mapper";
import EditAddressRequestDTO from "../models/dto/request/EditAddressRequestDTO";
import AddressRequestDTO from "../models/dto/request/AddressRequestDTO";

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

    async getAddressesByUser(userId: number): Promise<AddressResponseDTO[]> {

        const addresses = await this.userRepository.getAddressesByUserId(userId);
        return addresses.map((addresses) => mapAddressToAddressResponseDTO(addresses, userId));
    }

    async createUser(phoneNumber: string, name: string): Promise<User | null> {
        await this.userRepository.addUserByPhoneNumber(phoneNumber, name)
        return await this.getUserByPhoneNumber(phoneNumber);
    }

    async addAddress(userId: number, address: AddressRequestDTO): Promise<void> {
        if (address.isDefault) {
            await this.updateAddressesToNotDefault(userId)
        }
        await this.userRepository.addAddressByUserId(userId, address.name, address.pincode, address.address, address.city, address.state, address.phoneNumber, address.isDefault)
    }

    async updateAddressesToNotDefault(userId: number): Promise<void> {
        await this.userRepository.updateAddressesToNotDefault(userId)
    }

    async updateAddressToDefault(addressId: number, userId: number): Promise<void> {
        await this.userRepository.updateAddressToDefault(addressId, userId)
    }

    async editAddress(userId: number, address: EditAddressRequestDTO): Promise<void> {
        if (address.isDefault) {
            await this.updateAddressesToNotDefault(userId)
        }
        await this.userRepository.editAddress(address.id, address)
    }
}