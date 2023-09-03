import {executeSql} from "../database/database";
import User from "../models/entity/User";
import Address from "../models/entity/Address";

export default class UserRepository {
    async addOTPByPhoneNumber(phoneNumber: string, otp: string) {
        const insertQuery = 'INSERT INTO OTPRecords (phoneNumber, otp) VALUES (?, ?)';
        await executeSql(insertQuery, [phoneNumber, otp]);
    }

    async getOTPByPhoneNumber(phoneNumber: string): Promise<string | null> {
        const selectQuery = 'SELECT otp FROM OTPRecords WHERE phoneNumber = ? ORDER BY created_at DESC LIMIT 1';
        const result = await executeSql(selectQuery, [phoneNumber]);
        if (result.length > 0) {
            return result[0].otp;
        } else return null
    }

    async deleteOTPByPhoneNumber(phoneNumber: string) {
        const deleteQuery = 'DELETE FROM OTPRecords WHERE phoneNumber = ?';
        await executeSql(deleteQuery, [phoneNumber]);
    }


    async getUserByPhoneNumber(phoneNumber: string): Promise<User | null> {
        const selectQuery = 'SELECT * FROM Users WHERE phoneNumber = ?';
        const rows = await executeSql(selectQuery, [phoneNumber]);
        if (rows.length) {
            return rows[0];
        }
        return null
    }

    async getUserById(id: number): Promise<User | null> {
        const selectQuery = 'SELECT * FROM Users WHERE id = ?';
        const rows = await executeSql(selectQuery, [id]);
        if (rows.length) {
            return rows[0];
        }
        return null
    }

    async addUserByPhoneNumber(phoneNumber: string, name: string, deviceToken: string) {
        const insertQuery = 'INSERT INTO Users (phoneNumber,name,deviceToken) VALUES (?, ?,?)';
        await executeSql(insertQuery, [phoneNumber, name, deviceToken]);
    }

    async getAddressesByUserId(userId: number): Promise<Address[]> {
        const query = 'SELECT * FROM Address WHERE userId = ?';
        const rows = await executeSql(query, [userId]);
        return rows as Address[];
    }


    async addAddressByUserId(userId: number, name: string, pincode: string, address: string, city: string, state: string, phoneNumber: string, isDefault: boolean): Promise<void> {
        const insertQuery = 'INSERT INTO Address (userId, name,pincode,address,city,state,phoneNumber,isDefault) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
        await executeSql(insertQuery, [userId, name, pincode, address, city, state, phoneNumber, isDefault]);
    }

    async updateAddressesToNotDefault(userId: number): Promise<void> {
        const query = 'UPDATE Address SET isDefault = false WHERE userId = ?';
        await executeSql(query, [userId]);
    }

    async updateAddressToDefault(addressId: number, userId: number): Promise<void> {
        const query = `
            UPDATE Address
            SET isDefault = CASE
                                WHEN id = ? THEN true
                                ELSE false
                END
            WHERE userId = ?;
        `;
        await executeSql(query, [addressId, userId]);
    }

    async editAddress(addressId: number, newData: any): Promise<void> {
        const query = 'UPDATE Address SET ? WHERE id = ?';
        await executeSql(query, [newData, addressId]);
    };

    async updateDeviceTokenByUserId(userId: number, deviceToken: string) {
        const query = 'UPDATE Users SET deviceToken = ? WHERE id = ?';
        await executeSql(query, [deviceToken, userId]);
    }

    async getDeviceTokenByUserId(userId: number): Promise<string | null> {
        const selectQuery = 'SELECT deviceToken FROM Users WHERE id = ? LIMIT 1';
        const result = await executeSql(selectQuery, [userId]);
        if (result.length > 0) {
            return result[0].deviceToken;
        } else return null
    }
}