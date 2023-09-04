import * as admin from "firebase-admin";
import serviceAccountKey from "../../serviceAccountKey.json";

export function initFirebase() {
    admin.initializeApp({
        credential: admin.credential.cert(serviceAccountKey as admin.ServiceAccount),
    });
}