"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const productsController_1 = require("../controllers/productsController");
const productValidators_1 = require("../middlewares/validators/productValidators");
const router = express_1.default.Router();
router.post('/', productValidators_1.validateFetchAllProducts, productsController_1.fetchAllProducts);
exports.default = router;
