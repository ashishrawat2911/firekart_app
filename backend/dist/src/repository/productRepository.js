"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = require("../database/database");
class ProductRepository {
    getAllProducts(offset, pageSize) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'SELECT * FROM Product LIMIT ? OFFSET ?';
            return yield (0, database_1.executeSql)(query, [pageSize, offset]);
        });
    }
    // async searchProducts(searchTerm, offset, pageSize) {
    //     const query = `
    //         SELECT *
    //         FROM Product
    //         WHERE name LIKE CONCAT('%', ?, '%')
    //            OR description LIKE CONCAT('%', ?, '%') LIMIT ?
    //         OFFSET ?;
    //     `;
    //
    //     const params = [searchTerm, searchTerm, pageSize, offset];
    //
    //     const products = await executeSql(query, params);
    //     return products;
    //
    // }
    getProductById(productId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'SELECT * FROM Product WHERE id = ?';
            const rows = yield (0, database_1.executeSql)(query, [productId]);
            if (rows.length > 0) {
                return rows[0];
            }
            else {
                return null;
            }
        });
    }
    add() {
        return __awaiter(this, void 0, void 0, function* () {
            const insertQuery = `
            INSERT INTO Product (image, name, description, unit, currency,
                                 dealOfTheDay, topProducts, onSale, currentPrice, actualPrice,
                                 quantityPerUnit, isProductAvailable)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
            yield Promise.all(products.map(newProduct => (0, database_1.executeSql)(insertQuery, [
                newProduct.productId, newProduct.image, newProduct.name,
                newProduct.description, newProduct.unit, newProduct.currency,
                newProduct.dealOfTheDay, newProduct.topProducts, newProduct.onSale,
                newProduct.currentPrice, newProduct.actualPrice,
                newProduct.quantityPerUnit, newProduct.isProductAvailable
            ])));
        });
    }
}
exports.default = ProductRepository;
const products = [
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 81,
        "dealOfTheDay": true,
        "nameSearch": [
            "a",
            "ap",
            "app",
            "appl",
            "apple",
            "apples"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783469f0",
        "image": "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/05/13/35552.jpeg",
        "currentPrice": 71,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Apples",
        "onSale": true
    },
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 46,
        "dealOfTheDay": true,
        "nameSearch": [
            "b",
            "ba",
            "ban",
            "bana",
            "banan",
            "banana",
            "bananas"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783488f1",
        "image": "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg",
        "currentPrice": 36,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Bananas",
        "onSale": true
    },
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 80,
        "dealOfTheDay": true,
        "nameSearch": [
            "b",
            "bl",
            "blu",
            "blue",
            "blueb",
            "bluebe",
            "blueber",
            "blueberr",
            "blueberri",
            "blueberrie",
            "blueberries"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783490f2",
        "image": "https://www.supermarketperimeter.com/ext/resources/0430-blueberries.png?1588260305",
        "currentPrice": 70,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Blueberries",
        "onSale": true
    },
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 30,
        "dealOfTheDay": true,
        "nameSearch": [
            "g",
            "gr",
            "gra",
            "grap",
            "grape",
            "grapef",
            "grapefr",
            "grapefru",
            "grapefrui",
            "grapefruit"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783491f3",
        "image": "https://cdn.britannica.com/22/122522-050-6CD1C3E7/Grapefruit.jpg",
        "currentPrice": 20,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Grapefruit",
        "onSale": true
    },
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 71,
        "dealOfTheDay": true,
        "nameSearch": [
            "k",
            "ki",
            "kiw",
            "kiwi"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783492f4",
        "image": "https://spiderimg.amarujala.com/assets/images/2019/01/06/kivi_1546770595.jpeg",
        "currentPrice": 61,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Kiwi",
        "onSale": true
    },
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 21,
        "dealOfTheDay": true,
        "nameSearch": [
            "m",
            "ma",
            "man",
            "mang",
            "mango"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783492f5",
        "image": "https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-mango-tree-mallika-grafted-plant_600x600.jpg",
        "currentPrice": 11,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Mango",
        "onSale": true
    },
    {
        "description": "A fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering. Fruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world's agricultural output, and some (such as the apple and the pomegra",
        "categories": [
            "fruits"
        ],
        "unit": "kg",
        "actualPrice": 84,
        "dealOfTheDay": true,
        "nameSearch": [
            "o",
            "or",
            "ora",
            "oran",
            "orang",
            "orange"
        ],
        "topProducts": true,
        "isProductAvailable": false,
        "productId": "1617265783493f6",
        "image": "https://www.freepngimg.com/thumb/orange/1-2-orange-picture.png",
        "currentPrice": 74,
        "quantityPerUnit": 1,
        "currency": "₹",
        "name": "Orange",
        "onSale": true
    }
];
