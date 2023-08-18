import 'package:firekart/data/model/account_details_model.dart';
import 'package:firekart/data/model/cart_model.dart';
import 'package:firekart/data/model/order_model.dart';
import 'package:firekart/data/model/product_model.dart';

OrderModel get mockOrderModel {
  return OrderModel(
    'order_123',
    99.99,
    [
      OrderItemModel(
        'product_1',
        'image_url',
        'Product 1',
        'pcs',
        'USD',
        19.99,
        2,
      ),
      OrderItemModel(
        'product_2',
        'image_url',
        'Product 2',
        'pcs',
        'USD',
        29.99,
        1,
      ),
    ],
    '2023-06-13 12:00:00',
    'completed',
    'USD',
    'payment_123',
    'signature_123',
    AddressModel(
      'Home',
      '12345',
      '123 Main St',
      'New York',
      'NY',
      '+1234567890',
      true,
    ),
  );
}

ProductModel get mockProductModel => ProductModel(
      '12345',
      'https://example.com/image.jpg',
      'Product 12345',
      'Product Description',
      'pcs',
      ['Category 1', 'Category 2'],
      'USD',
      true,
      false,
      true,
      19.99,
      24.99,
      1,
      true,
      ['product', 'name'],
    );

AccountDetailsModel get mockUserDetails {
  return AccountDetailsModel(
    'John Doe',
    '+1234567890',
    [
      AddressModel(
        'Home',
        '12345',
        '123 Main St',
        'New York',
        'NY',
        '+1234567890',
        true,
      ),
      AddressModel(
        'Office',
        '67890',
        '456 Park Ave',
        'San Francisco',
        'CA',
        '+9876543210',
        false,
      ),
    ],
  );
}

CartModel get mockCartModel => CartModel(
      '123456789',
      'https://example.com/product_image.jpg',
      'Product 1',
      'Unit',
      'USD',
      10.99,
      1,
      2,
    );
