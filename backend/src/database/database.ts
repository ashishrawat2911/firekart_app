import mysql from 'mysql2';
import {dbConfig} from '../config/configs';

class Database {
    private pool: mysql.Pool;

    constructor() {
        this.pool = mysql.createPool(dbConfig);

        this.pool.getConnection((error, connection) => {
            if (error) {
                console.error('Error connecting to the database:', error);
            } else {
                console.log('Connected to the database');
                connection.release();
            }
        });
    }

    async executeSql(query: string, params: any[]): Promise<any> {
        return new Promise((resolve, reject) => {
            this.pool.getConnection((error, connection) => {
                if (error) {
                    reject(error);
                    return;
                }

                connection.query(query, params, (queryError, results) => {
                    connection.release();
                    if (queryError) {
                        reject(queryError);
                    } else {
                        resolve(results);
                    }
                });
            });
        });
    }
}

export default Database;
