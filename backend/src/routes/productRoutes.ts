import express from 'express';
import {fetchAllProducts} from "../controllers/productsController";
import {validateFetchAllProducts} from "../middlewares/validators/productValidators";

const router = express.Router();

router.post('/', validateFetchAllProducts, fetchAllProducts);

export default router;
