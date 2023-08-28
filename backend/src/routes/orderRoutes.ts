import express from 'express';
import {addToCart, deleteFromCart, fetchAllCarts, updateCart} from "../controllers/cartController";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";
import {fetchAllOrders, placeOrder} from "../controllers/orderController";

const router = express.Router();
//TODO Add Request Validation
router.get('/', authenticateMiddleware, fetchAllOrders);
router.post('/', authenticateMiddleware, placeOrder);

export default router;
