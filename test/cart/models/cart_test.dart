import 'dart:convert';

import 'package:flutter_tech_camp/src/cart/models/cart.dart';
import 'package:flutter_tech_camp/src/cart/models/cart_item.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  Cart cart;

  setUp(() {
    final jsonList = json.decode(reader('product_list.json'));
    final cartItemList = jsonList
        .map<CartItem>(
            (e) => CartItem(multiplier: 1, product: Product.fromJson(e)))
        .toList();
    cart = Cart(items: cartItemList);
  });

  group('CartModel Tests', () {
    test('should add product to cart without changing order', () {
      // Arrange
      final product = Product.fromJson(json.decode(reader('product.json')));

      // Act
      cart = cart.addProduct(product);

      // Assert
      expect(cart.items[0].product, product);
    });

    test('should add product to the end of the list without changing order',
        () {
      // Arrange
      final product = Product.fromJson(json.decode(reader('product_5.json')));

      // Act
      cart = cart.addProduct(product);

      // Assert
      expect(cart.items[4].product, product);
      expect(cart.items.length, 5);
    });

    test('should remove a product from the cart without changing the order',
        () {
      cart = cart.copyWith(
          items: cart.items
              .map<CartItem>((e) => e.copyWith(multiplier: 2))
              .toList());

      final product = Product.fromJson(json.decode(reader('product.json')));

      cart = cart.removeProduct(product);
      expect(cart.items[0].product, product);
    });
  });
}
