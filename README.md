# Firekart

![CI](https://github.com/ashishrawat2911/firekart/workflows/Ecomm/badge.svg)
[![GitHub stars](https://img.shields.io/github/stars/ashishrawat2911/firekart?style=social)](https://github.com/ashishrawat2911/firekart) ![GitHub forks](https://img.shields.io/github/forks/ashishrawat2911/firekart?style=social)
![GitHub pull requests](https://img.shields.io/github/issues-pr/ashishrawat2911/firekart) ![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/ashishrawat2911/firekart) ![GitHub last commit](https://img.shields.io/github/last-commit/ashishrawat2911/firekart)  ![GitHub issues](https://img.shields.io/github/issues-raw/ashishrawat2911/firekart) [![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ashishrawat2911/firekart)

An Ecommerce application built in Flutter using Nodejs and MySQl.

## Overview
The main focus of this project was to create an ecommerce application complete with individual user logins, payment ability, and orders list. It lets the user login, browse products (fruits), choose quantities, view their cart, modify their address, and view past orders all in a user friendly interface.
This project is built in Flutter, an open source framework provided by Google, and the backend utilizes MySQL to manage the database and NodeJS to create server-side applications.

## Getting started

* Project setup instructions are given at [Wiki](https://github.com/ashishrawat2911/firekart/wiki/Gettings-Started)
  section.

## Firekart Backend  ⚙️🗄️👨‍💻

* Firekart Backend is built with Nodejs and MySQl. Check [here](https://github.com/ashishrawat2911/firekart-backend).
* Note: To view what version is supported look inside the "package-lock.json" and find where it says "engines"
* The engine field lets you know what versions are supported.
* The engine field may look like this:
 ```
[in package-lock.json]
      "engines": {
        "node": ">=0.10.0"
      }
  ```
# Dependencies Needed
As listed in the Firekart Backend, there are a few dependencies firekart relies on. Here is how you can install the following dependencies:
1) Open a command prompt on Windows or a terminal on macOS/Linux.
2) Navigate to Your Project Directory (Ex: "cd /path/project")
3) Copy and paste the following commands to install:
  - Express: Web framework for Node.js.
     ``` npm install express ```
  - MySQL2: MySQL driver for Node.js.
    ``` npm install mysql2 ```
  - jsonwebtoken: JSON Web Token library for authentication.
    ``` npm install jsonwebtoken ```
  - bcrypt: Password hashing library.
    ```npm install bcrypt ```
  - dotenv: Load environment variables from a .env file.
    ``` npm install dotenv ```
  - express-validator: Validation and sanitization library for Express.
    ``` npm install express-validator ```
4) Check the package.json file to see if the installations were successful.


# Screenshots

Splash Screen              |  Login Page               | OTP Page               |  Home Page
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](screenshot/splash_screen.png)|![](screenshot/login_screen.png)|![](screenshot/otp_screen.png)|![](screenshot/home_page.png)|

Search Screen        |  Cart Screen       |   Address Screen               |  Add Address Screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](screenshot/search_screen.png)|![](screenshot/cart_screen.png)|![](screenshot/address_screen.png)|![](screenshot/add_address_sceen.png)|

Account Screen                  | Edit Details Screen       |   Orders Screen      |     Payment Screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](screenshot/account_screen.png)|![](screenshot/edit_details_screen.png)|![](screenshot/orders_screen.png)|![](screenshot/payment_screen.png)|

Product Screen 1          |  Product Screen 2              |  Product Screen 3              
:---------------------------------:|:-------------------------:|:-------------------------:
![](screenshot/product_page1.png) |![](screenshot/product_page2.png)|![](screenshot/product_page3.png)

## Features
- Login Page: Takes in mobile number for account creation or login
- OTP Page: Sends verification code to mobile number of account
- Home Page: Shows products available and buttons that allow the user to "Search" for products, view their "Cart" or purchases, and see their "Account" details.
- Search Screen: Let's the user search through typing instead of scrolling through all the products.
    - Products display name, price, and weight/quantity.
- Cart Screen: Shows products user selected and allows for quantity changes.
    - Also displays total cost, delivery address, and a button that allows the user to "Make Payment".
- Address Screen: Let's a user edit their address and other information or add new addresses with the ability to choose a certain address as default.
- Add Address Screen: Takes information such as name, phone number, and street information and gives the option to set the new address as the default address.
- Account Screen: Allows user to edit their profile, view their orders, change their address, and logout.
- Edit Details Screen: Users can change their name or navigate to manage their adress from this screen.
- Orders Screen: Shows list of past orders and their status of whether they were ordered or not.
    - Displays order date and time and the total amount for each item in cart.
- Payment Screen: A popup that allows you to edit and input phone number and email as well as select a payment method among 4 possible options. There is also a defualt option at the top to allow for easy access and use.
- Product Screen: The product screen shows a picture of the product, their name, as well as a description of the fruit and a definition of what fruit is.
    - This screen also describes the cost per amount / weight.
    - Once a user presses the "Add" button they are prompted with the ability to add the amount / quantity and the ability to view their cart after selection.

## Created & Maintained By

[Ashish Rawat](https://ashishrawat.dev) ([Twitter](https://www.twitter.com/ashishrawat2911))  ([Insta](https://www.instagram.com/ashishrawat2911)) ([Dev.to](https://dev.to/ashishrawat2911))
![Twitter Follow](https://img.shields.io/twitter/follow/ashishrawat2911?style=social)

> If you found this project helpful or you learned something from the source code and want to thank me, consider buying
> me a cup of :coffee:
>
> * [PayPal](https://paypal.me/ashishrawat2911/)
