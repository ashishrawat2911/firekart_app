import * as admin from "firebase-admin";
import {fcmConfig} from "../config/configs";

export function initFirebase() {
    admin.initializeApp({
        credential: admin.credential.cert(fcmConfig as admin.ServiceAccount),
    });
}