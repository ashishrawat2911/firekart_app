import {executeSql} from "../database/database";
import User from "../models/User";
import Address from "../models/Address";

export default class UserRepository {
    async addOTPByPhoneNumber(phoneNumber: string, otp: string) {
        const insertQuery = 'INSERT INTO OTPRecords (phone_number, otp) VALUES (?, ?)';
        await executeSql(insertQuery, [phoneNumber, otp]);
    }

    async getOTPByPhoneNumber(phoneNumber: string): Promise<string | null> {
        const selectQuery = 'SELECT otp FROM OTPRecords WHERE phone_number = ? ORDER BY created_at DESC LIMIT 1';
        const result = await executeSql(selectQuery, [phoneNumber]);
        if (result.length > 0) {
            return result[0].otp;
        } else return null
    }

    async deleteOTPByPhoneNumber(phoneNumber: string) {
        const deleteQuery = 'DELETE FROM OTPRecords WHERE phone_number = ?';
        await executeSql(deleteQuery, [phoneNumber]);
    }


    async getUserByPhoneNumber(phoneNumber: string): Promise<User | null> {
        const selectQuery = 'SELECT * FROM Users WHERE phone_number = ?';
        const rows = await executeSql(selectQuery, [phoneNumber]);
        if (rows.length) {
            return {
                id: rows[0].id as number,
                phone_number: rows[0].phone_number as string,
                name: rows[0].name as string,
            };
        }
        return null
    }

    async addUserByPhoneNumber(phoneNumber: string, name: string) {
        const insertQuery = 'INSERT INTO Users (phone_number,name) VALUES (?, ?)';
        await executeSql(insertQuery, [phoneNumber, name]);
    }

    async getAddressesByUserId(userId: number): Promise<Address[]> {
        const query = 'SELECT * FROM Address WHERE userId = ?';
        const rows = await executeSql(query, [userId]);
        return rows as Address[];
    }
}