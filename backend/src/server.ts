import express, {Application} from 'express';
import mongoose from 'mongoose';
import dotenv from 'dotenv';
import bodyParser from 'body-parser';

dotenv.config();

const app: Application = express();
const port = process.env.PORT;

// Middleware
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

// Routes


// Connect to MongoDB
mongoose.connect(process.env.MONGODB_URI || '');

// Start the server
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});

