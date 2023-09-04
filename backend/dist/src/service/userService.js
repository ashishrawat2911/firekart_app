"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const mapper_1 = require("../mapper/mapper");
class UserService {
    constructor(userRepository) {
        this.userRepository = userRepository;
    }
    generateOTP(phoneNumber) {
        return __awaiter(this, void 0, void 0, function* () {
            const otp = Math.floor(1000 + Math.random() * 9000).toString();
            yield this.userRepository.addOTPByPhoneNumber(phoneNumber, otp);
            return otp;
        });
    }
    verifyOTP(phoneNumber, otp) {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                const storedOTP = yield this.userRepository.getOTPByPhoneNumber(phoneNumber);
                if (!storedOTP) {
                    return false;
                }
                if (storedOTP === otp) {
                    yield this.userRepository.deleteOTPByPhoneNumber(phoneNumber);
                    return true;
                }
                return false;
            }
            catch (error) {
                console.error('An error occurred while verifying OTP:', error);
                return false;
            }
        });
    }
    getUserByPhoneNumber(phoneNumber) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.userRepository.getUserByPhoneNumber(phoneNumber);
        });
    }
    getUserById(id) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.userRepository.getUserById(id);
        });
    }
    getAddressesByUser(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const addresses = yield this.userRepository.getAddressesByUserId(userId);
            return addresses.map((addresses) => (0, mapper_1.mapAddressToAddressResponseDTO)(addresses, userId));
        });
    }
    createUser(phoneNumber, name) {
        return __awaiter(this, void 0, void 0, function* () {
            yield this.userRepository.addUserByPhoneNumber(phoneNumber, name);
            return yield this.getUserByPhoneNumber(phoneNumber);
        });
    }
    addAddress(userId, address) {
        return __awaiter(this, void 0, void 0, function* () {
            if (address.isDefault) {
                yield this.updateAddressesToNotDefault(userId);
            }
            yield this.userRepository.addAddressByUserId(userId, address.name, address.pincode, address.address, address.city, address.state, address.phoneNumber, address.isDefault);
        });
    }
    updateAddressesToNotDefault(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            yield this.userRepository.updateAddressesToNotDefault(userId);
        });
    }
    updateAddressToDefault(addressId, userId) {
        return __awaiter(this, void 0, void 0, function* () {
            yield this.userRepository.updateAddressToDefault(addressId, userId);
        });
    }
    editAddress(userId, address) {
        return __awaiter(this, void 0, void 0, function* () {
            if (address.isDefault) {
                yield this.updateAddressesToNotDefault(userId);
            }
            yield this.userRepository.editAddress(address.id, address);
        });
    }
}
exports.default = UserService;
