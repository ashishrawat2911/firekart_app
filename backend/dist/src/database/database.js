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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.executeSql = exports.closeDb = exports.initDb = void 0;
const mysql2_1 = __importDefault(require("mysql2"));
const configs_1 = require("../config/configs");
const pool = mysql2_1.default.createPool(configs_1.dbConfig);
function initDb() {
    pool.getConnection((error, connection) => {
        if (error) {
            console.error('Error connecting to the database:', error);
        }
        else {
            console.log('Connected to the database');
            connection.release();
        }
    });
}
exports.initDb = initDb;
function closeDb() {
    pool.end();
}
exports.closeDb = closeDb;
function executeSql(query, params) {
    return __awaiter(this, void 0, void 0, function* () {
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
                    }
                    else {
                        resolve(results);
                    }
                });
            });
        });
    });
}
exports.executeSql = executeSql;
