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
app.use('/auth', authRoutes);
app.use('/products', productRoutes);
app.use('/cart', cartRoutes);
app.use('/order', orderRoutes);


// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
process.on('exit', () => {
    closeDb();
});

