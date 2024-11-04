import express, {Application} from 'express';
import bodyParser from 'body-parser';
import authRoutes from './routes/authRoutes';
import {PORT} from './config/configs';
import {closeDb, initDb} from "./database/database";
import productRoutes from "./routes/productRoutes";
import cartRoutes from "./routes/cartRoutes";
import orderRoutes from "./routes/orderRoutes";
import {initFirebase} from "./fcm/fcm";

const app: Application = express();
initDb()
initFirebase()
// Middleware
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

// Routes
app.use('/api/v1/auth', authRoutes);
app.use('/api/v1/products', productRoutes);
app.use('/api/v1/cart', cartRoutes);
app.use('/api/v1/order', orderRoutes);

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
process.on('exit', () => {
    closeDb();
});

