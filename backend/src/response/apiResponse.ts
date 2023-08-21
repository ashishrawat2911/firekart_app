import {Response} from 'express';

export default class ApiResponse {
    public static success(res: Response, data: any, message?: string): void {
        res.status(200).json({success: true, data, message});
    }

    public static created(res: Response, data: any, message?: string): void {
        res.status(201).json({success: true, data, message});
    }

    public static badRequest(res: Response, message: string, error?: any): void {
        res.status(400).json({success: false, message,error});
    }

    public static unauthorized(res: Response, message: string): void {
        res.status(401).json({success: false, message});
    }

    public static forbidden(res: Response, message: string): void {
        res.status(403).json({success: false, message});
    }

    public static notFound(res: Response, message: string): void {
        res.status(404).json({success: false, message});
    }

    public static conflict(res: Response, message: string): void {
        res.status(409).json({success: false, message});
    }

    public static internalServerError(res: Response, message: string, error?: any): void {
        if (error) {
            console.error(error)
        }
        res.status(500).json({success: false, message, error});
    }
}
