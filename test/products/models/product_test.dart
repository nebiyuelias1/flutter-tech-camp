import 'dart:convert';

import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  Product tProduct = Product(
      id: 1,
      title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
      image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
      price: 109.95,
      category: 'men\'s clothing',
      description:
          'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday');

  test('should construct a Product object from json', () {
    // Arrange
    String jsonString = reader('product.json');
    final jsonMap = json.decode(jsonString);

    // Act
    var result = Product.fromJson(jsonMap);

    // Assert
    expect(result, tProduct);
  });
}
