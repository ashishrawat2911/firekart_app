import Database from '../database/database';
import User from '../models/User'

class UserService {
    private db: Database;

    constructor() {
        this.db = new Database();
    }

    async generateOTP(phoneNumber: string): Promise<string> {
        const otp = Math.floor(1000 + Math.random() * 9000).toString();
        const insertQuery = 'INSERT INTO otp_records (phone_number, otp) VALUES (?, ?)';
        await this.db.executeSql(insertQuery, [phoneNumber, otp]);
        return otp;
    }

    async verifyOTP(phoneNumber: string, otp: string): Promise<boolean> {
        try {
            const selectQuery = 'SELECT otp FROM otp_records WHERE phone_number = ? ORDER BY created_at DESC LIMIT 1';
            const result = await this.db.executeSql(selectQuery, [phoneNumber]);
            if (result[0].otp === otp) {
                const deleteQuery = 'DELETE FROM otp_records WHERE phone_number = ?';
                await this.db.executeSql(deleteQuery, [phoneNumber]);
                return true;
            }
        } catch (e) {
            console.error(e)
        }
        return false;
    }

    async getUserByPhoneNumber(phoneNumber: string): Promise<User | null> {
        const selectQuery = 'SELECT * FROM users WHERE phone_number = ?';
        const rows = await this.db.executeSql(selectQuery, [phoneNumber]);
        if (rows.length) {
            return {
                id: rows[0].id as number,
                phone_number: rows[0].phone_number as string,
            };
        }
        return null;
    }

    async createUser(phoneNumber: string): Promise<User | null> {
        const insertQuery = 'INSERT INTO users (phone_number) VALUES (?)';
        await this.db.executeSql(insertQuery, [phoneNumber]);
        return await this.getUserByPhoneNumber(phoneNumber);
    }
}

export default UserService;
