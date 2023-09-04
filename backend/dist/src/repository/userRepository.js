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
const database_1 = require("../database/database");
class UserRepository {
    addOTPByPhoneNumber(phoneNumber, otp) {
        return __awaiter(this, void 0, void 0, function* () {
            const insertQuery = 'INSERT INTO OTPRecords (phoneNumber, otp) VALUES (?, ?)';
            yield (0, database_1.executeSql)(insertQuery, [phoneNumber, otp]);
        });
    }
    getOTPByPhoneNumber(phoneNumber) {
        return __awaiter(this, void 0, void 0, function* () {
            const selectQuery = 'SELECT otp FROM OTPRecords WHERE phoneNumber = ? ORDER BY created_at DESC LIMIT 1';
            const result = yield (0, database_1.executeSql)(selectQuery, [phoneNumber]);
            if (result.length > 0) {
                return result[0].otp;
            }
            else
                return null;
        });
    }
    deleteOTPByPhoneNumber(phoneNumber) {
        return __awaiter(this, void 0, void 0, function* () {
            const deleteQuery = 'DELETE FROM OTPRecords WHERE phoneNumber = ?';
            yield (0, database_1.executeSql)(deleteQuery, [phoneNumber]);
        });
    }
    getUserByPhoneNumber(phoneNumber) {
        return __awaiter(this, void 0, void 0, function* () {
            const selectQuery = 'SELECT * FROM Users WHERE phoneNumber = ?';
            const rows = yield (0, database_1.executeSql)(selectQuery, [phoneNumber]);
            if (rows.length) {
                return rows[0];
            }
            return null;
        });
    }
    getUserById(id) {
        return __awaiter(this, void 0, void 0, function* () {
            const selectQuery = 'SELECT * FROM Users WHERE id = ?';
            const rows = yield (0, database_1.executeSql)(selectQuery, [id]);
            if (rows.length) {
                return rows[0];
            }
            return null;
        });
    }
    addUserByPhoneNumber(phoneNumber, name) {
        return __awaiter(this, void 0, void 0, function* () {
            const insertQuery = 'INSERT INTO Users (phoneNumber,name) VALUES (?, ?)';
            yield (0, database_1.executeSql)(insertQuery, [phoneNumber, name]);
        });
    }
    getAddressesByUserId(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'SELECT * FROM Address WHERE userId = ?';
            const rows = yield (0, database_1.executeSql)(query, [userId]);
            return rows;
        });
    }
    addAddressByUserId(userId, name, pincode, address, city, state, phoneNumber, isDefault) {
        return __awaiter(this, void 0, void 0, function* () {
            const insertQuery = 'INSERT INTO Address (userId, name,pincode,address,city,state,phoneNumber,isDefault) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
            yield (0, database_1.executeSql)(insertQuery, [userId, name, pincode, address, city, state, phoneNumber, isDefault]);
        });
    }
    updateAddressesToNotDefault(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'UPDATE Address SET isDefault = false WHERE userId = ?';
            yield (0, database_1.executeSql)(query, [userId]);
        });
    }
    updateAddressToDefault(addressId, userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = `
            UPDATE Address
            SET isDefault = CASE
                                WHEN id = ? THEN true
                                ELSE false
                END
            WHERE userId = ?;
        `;
            yield (0, database_1.executeSql)(query, [addressId, userId]);
        });
    }
    editAddress(addressId, newData) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'UPDATE Address SET ? WHERE id = ?';
            yield (0, database_1.executeSql)(query, [newData, addressId]);
        });
    }
    ;
}
exports.default = UserRepository;
