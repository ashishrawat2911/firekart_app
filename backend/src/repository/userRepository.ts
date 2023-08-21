import {executeSql} from "../database/database";
import User from "../models/User";

export default class UserRepository {
    async addOTPByPhoneNumber(phoneNumber: string, otp: string) {
        const insertQuery = 'INSERT INTO otp_records (phone_number, otp) VALUES (?, ?)';
        await executeSql(insertQuery, [phoneNumber, otp]);
    }

    async getOTPByPhoneNumber(phoneNumber: string): Promise<string | null> {
        const selectQuery = 'SELECT otp FROM otp_records WHERE phone_number = ? ORDER BY created_at DESC LIMIT 1';
        const result = await executeSql(selectQuery, [phoneNumber]);
        if (result.length>0) {
            return result[0].otp;
        } else return null
    }

    async deleteOTPByPhoneNumber(phoneNumber: string) {
        const deleteQuery = 'DELETE FROM otp_records WHERE phone_number = ?';
        await executeSql(deleteQuery, [phoneNumber]);
    }


    async getUserByPhoneNumber(phoneNumber: string): Promise<User | null> {
        const selectQuery = 'SELECT * FROM users WHERE phone_number = ?';
        const rows = await executeSql(selectQuery, [phoneNumber]);
        if (rows.length) {
            return {
                id: rows[0].id as number,
                phone_number: rows[0].phone_number as string,
            };
        }
        return null
    }

    async addUserByPhoneNumber(phoneNumber: string) {
        const insertQuery = 'INSERT INTO users (phone_number) VALUES (?)';
        await executeSql(insertQuery, [phoneNumber]);
    }
}