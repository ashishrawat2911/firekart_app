import express, {Application} from 'express';
import bodyParser from 'body-parser';
import authRoutes from './routes/authRoutes';
import Database from './database/database';
import {PORT} from './config/configs';

const app: Application = express();
const dbConnection = new Database();


// Middleware
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

// Routes
app.use('/auth', authRoutes);


// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
process.on('exit', () => {
    // dbConnection.closeConnection();
});

