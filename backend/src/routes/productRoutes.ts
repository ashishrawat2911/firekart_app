import express from 'express';
import {fetchAllProducts} from "../controllers/productsController";
import {validateFetchAllProducts} from "../middlewares/validators/productValidators";

const router = express.Router();
//TODO Add Request Validation
router.post('/', validateFetchAllProducts, fetchAllProducts);
//TODO Add Search Api

export default router;
