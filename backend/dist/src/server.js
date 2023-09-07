"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const body_parser_1 = __importDefault(require("body-parser"));
const authRoutes_1 = __importDefault(require("./routes/authRoutes"));
const configs_1 = require("./config/configs");
const database_1 = require("./database/database");
const productRoutes_1 = __importDefault(require("./routes/productRoutes"));
const cartRoutes_1 = __importDefault(require("./routes/cartRoutes"));
const orderRoutes_1 = __importDefault(require("./routes/orderRoutes"));
const fcm_1 = require("./fcm/fcm");
const app = (0, express_1.default)();
(0, database_1.initDb)();
(0, fcm_1.initFirebase)();
// Middleware
app.use(express_1.default.json());
app.use(body_parser_1.default.json());
app.use(body_parser_1.default.urlencoded({ extended: true }));
// Routes
app.use('/api/v1/auth', authRoutes_1.default);
app.use('/api/v1/products', productRoutes_1.default);
app.use('/api/v1/cart', cartRoutes_1.default);
app.use('/api/v1/order', orderRoutes_1.default);
// Start the server
app.listen(configs_1.PORT, () => {
    console.log(`Server is running on port ${configs_1.PORT}`);
});
process.on('exit', () => {
    (0, database_1.closeDb)();
});
