const mongoose = require('mongoose');

// Connect to MongoDB
mongoose.connect('mongodb://localhost/sapna', { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => console.log('Connected to MongoDB'))
    .catch(err => console.error('Could not connect to MongoDB', err));

// Define schemas and models for restaurants and orphanages
const restaurantSchema = new mongoose.Schema({
    name: String,
    location: String,
    // Other fields as needed
});

const orphanageSchema = new mongoose.Schema({
    name: String,
    location: String,
    // Other fields as needed
});

const Restaurant = mongoose.model('Restaurant', restaurantSchema);
const Orphanage = mongoose.model('Orphanage', orphanageSchema);

// Example of CRUD operations
async function getNearbyRestaurants() {
    return await Restaurant.find({ /* Query to find nearby restaurants */ });
}

async function getNearbyOrphanages() {
    return await Orphanage.find({ /* Query to find nearby orphanages */ });
}

// Use these functions in your API routes