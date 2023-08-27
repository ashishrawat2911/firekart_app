"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const authMiddlewares_1 = require("../middlewares/authMiddlewares");
const orderController_1 = require("../controllers/orderController");
const router = express_1.default.Router();
router.get('/', authMiddlewares_1.authenticateMiddleware, orderController_1.fetchAllOrders);
router.post('/', authMiddlewares_1.authenticateMiddleware, orderController_1.placeOrder);
exports.default = router;
