"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class ApiResponse {
    static success(res, message, data) {
        res.status(200).json({ success: true, data, message });
    }
    static emptySuccess(res, message) {
        res.status(200).json({ success: true, message });
    }
    static created(res, data, message) {
        res.status(201).json({ success: true, data, message });
    }
    static badRequest(res, message, error) {
        res.status(400).json({ success: false, message, error });
    }
    static unauthorized(res, message) {
        res.status(401).json({ success: false, message });
    }
    static forbidden(res, message) {
        res.status(403).json({ success: false, message });
    }
    static notFound(res, message) {
        res.status(404).json({ success: false, message });
    }
    static conflict(res, message) {
        res.status(409).json({ success: false, message });
    }
    static internalServerError(res, message, error) {
        if (error) {
            console.error(error);
        }
        res.status(500).json({ success: false, message, error });
    }
}
exports.default = ApiResponse;
