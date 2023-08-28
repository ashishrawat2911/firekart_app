import express from 'express';
import {addToCart, deleteFromCart, fetchAllCarts, updateCart} from "../controllers/cartController";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";

const router = express.Router();
//TODO Add Request Validation
router.get('/', authenticateMiddleware, fetchAllCarts);
router.post('/', authenticateMiddleware, addToCart);
router.patch('/', authenticateMiddleware, updateCart);
router.delete('/', authenticateMiddleware, deleteFromCart);

export default router;
