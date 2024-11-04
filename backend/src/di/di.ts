import CartRepository from "../repository/cartRepository";
import CartService from "../service/cartService";
import ProductRepository from "../repository/productRepository";
import ProductService from "../service/productService";
import UserRepository from "../repository/userRepository";
import UserService from "../service/userService";
import OrderRepository from "../repository/orderRepository";
import OrderService from "../service/orderService";
import FCMService from "../service/fcmService";

//Repository
export const cartRepository = new CartRepository()
export const productRepository = new ProductRepository()
export const userRepository = new UserRepository()
export const orderRepository = new OrderRepository()

//Service
export const cartService = new CartService(cartRepository);
export const productService = new ProductService(productRepository);
export const userService = new UserService(userRepository);
export const orderService = new OrderService(orderRepository);
export const fcmService = new FCMService();
