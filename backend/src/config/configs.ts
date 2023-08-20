import dotenv from 'dotenv';

dotenv.config();

export const dbConfig = {
    host: process.env.DB_HOST ?? "localhost",
    user: process.env.DB_USER ?? "root",
    password: process.env.DB_PASSWORD ?? "",
    database: process.env.DB_DATABASE ?? "firekart",
    namedPlaceholders: true,
};

export const JWT_SECRET_KEY = process.env.JWT_SECRET_KEY ?? "your-default-secret-key";

export const PORT = process.env.PORT ?? "9090";
