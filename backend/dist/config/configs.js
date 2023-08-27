"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
var _a, _b, _c, _d, _e, _f;
Object.defineProperty(exports, "__esModule", { value: true });
exports.PORT = exports.JWT_SECRET_KEY = exports.dbConfig = void 0;
const dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
exports.dbConfig = {
    host: (_a = process.env.DB_HOST) !== null && _a !== void 0 ? _a : "localhost",
    user: (_b = process.env.DB_USER) !== null && _b !== void 0 ? _b : "root",
    password: (_c = process.env.DB_PASSWORD) !== null && _c !== void 0 ? _c : "",
    database: (_d = process.env.DB_DATABASE) !== null && _d !== void 0 ? _d : "firekart",
    namedPlaceholders: true,
    decimalNumbers: true,
};
exports.JWT_SECRET_KEY = (_e = process.env.JWT_SECRET_KEY) !== null && _e !== void 0 ? _e : "your-default-secret-key";
exports.PORT = (_f = process.env.PORT) !== null && _f !== void 0 ? _f : "9090";
