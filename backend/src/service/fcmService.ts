import * as admin from 'firebase-admin';
export default class FCMService {
    constructor() {
    }

    async sendMessage(title: string, body: string, deviceToken: string) {
        try {
            const message = {
                notification: {
                    title: title,
                    body: body,
                },
                token: deviceToken,
            };

            const response = await admin.messaging().send(message);
            console.log('Successfully sent message:', response);
        } catch (error) {
            console.error('Error sending message:', error);
        }
    }
}