import mysql from 'mysql2';
import {dbConfig} from '../config/configs';

const pool = mysql.createPool(dbConfig);

function initDb() {
    pool.getConnection((error, connection) => {
        if (error) {
            console.error('Error connecting to the database:', error);
        } else {
            console.log('Connected to the database');
            connection.release();
        }
    });
}

function closeDb() {
    pool.end();
}

async function executeSql(query: string, params?: any[]): Promise<any> {
    return new Promise((resolve, reject) => {
        pool.getConnection((error, connection) => {
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

export {initDb, closeDb, executeSql};
