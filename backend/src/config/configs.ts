import dotenv from 'dotenv';

dotenv.config();

export const dbConfig = {
    host: process.env.DB_HOST ?? "localhost",
    user: process.env.DB_USER ?? "root",
    password: process.env.DB_PASSWORD ?? " ",
    database: process.env.DB_DATABASE ?? "",
    namedPlaceholders: true,
    decimalNumbers: true,
};

export const fcmConfig = {
    project_id: process.env.FCM_PROJECT_ID,
    client_email: process.env.FCM_CLIENT_EMAIL,
    client_id: process.env.FCM_Client_ID,
    privateKey: (process.env.FCM_PRIVATE_KEY as string).replace(/\\n/gm, "\n")
}
export const JWT_SECRET_KEY = process.env.JWT_SECRET_KEY ?? "your-default-secret-key";

export const PORT = process.env.PORT ?? "9090";
