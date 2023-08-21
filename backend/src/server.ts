import express, {Application} from 'express';
import bodyParser from 'body-parser';
import authRoutes from './routes/authRoutes';
import {PORT} from './config/configs';
import {closeDb, initDb} from "./database/database";

const app: Application = express();
initDb()

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
    closeDb();
});

