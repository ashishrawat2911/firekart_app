import express from 'express';
import {addToCart, deleteFromCart, fetchAllCarts, updateCart} from "../controllers/cartController";
import {authenticateMiddleware} from "../middlewares/authMiddlewares";
import {validateAddToCart, validateDeleteFromCart, validateUpdateCart} from "../middlewares/validators/cartValidators";

const router = express.Router();
router.get('/', authenticateMiddleware, fetchAllCarts);
router.post('/', validateAddToCart, authenticateMiddleware, addToCart);
router.patch('/', validateUpdateCart, authenticateMiddleware, updateCart);
router.delete('/', validateDeleteFromCart, authenticateMiddleware, deleteFromCart);

export default router;
