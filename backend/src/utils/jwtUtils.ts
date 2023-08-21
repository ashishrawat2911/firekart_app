import jwt from 'jsonwebtoken';
import {JWT_SECRET_KEY} from '../config/configs';

export const createJWT = async (userId: number): Promise<string> => {
    console.log(`createToken ${userId}`);
    const token = jwt.sign(
        {userId},
        JWT_SECRET_KEY || '',
        {expiresIn: '99h'}
    );
    console.log(`token ${token}`);

    return token;
};

export const getUserIdFromToken = (authorization: string): number => {
    const token = authorization.split(' ')[1];
    const decodedToken: any = jwt.verify(token, JWT_SECRET_KEY ?? '');
    return decodedToken.userId;
};

export const getExpFromToken = (authorization: string): number => {
    const token = authorization.split(' ')[1];
    const decodedToken: any = jwt.verify(token, JWT_SECRET_KEY ?? '');
    return decodedToken.exp;
};
