import express from 'express';
import {authenticateMiddleware} from "../middlewares/authMiddlewares";
import {fetchAllOrders, placeOrder} from "../controllers/orderController";
import {validatePlaceOrder} from "../middlewares/validators/orderValidators";

const router = express.Router();
router.get('/', authenticateMiddleware, fetchAllOrders);
router.post('/', validatePlaceOrder, authenticateMiddleware, placeOrder);

export default router;
