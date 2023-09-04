"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cartController_1 = require("../controllers/cartController");
const authMiddlewares_1 = require("../middlewares/authMiddlewares");
const cartValidators_1 = require("../middlewares/validators/cartValidators");
const router = express_1.default.Router();
router.get('/', authMiddlewares_1.authenticateMiddleware, cartController_1.fetchAllCarts);
router.post('/', cartValidators_1.validateAddToCart, authMiddlewares_1.authenticateMiddleware, cartController_1.addToCart);
router.patch('/', cartValidators_1.validateUpdateCart, authMiddlewares_1.authenticateMiddleware, cartController_1.updateCart);
router.delete('/', cartValidators_1.validateDeleteFromCart, authMiddlewares_1.authenticateMiddleware, cartController_1.deleteFromCart);
exports.default = router;
