import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tech_camp/common/exceptions.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_tech_camp/src/products/repository/products_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';

class MockDio extends Mock implements Dio {}

void main() {
  ProductsRepositoryImpl productsRepositoryImpl;
  MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    productsRepositoryImpl = ProductsRepositoryImpl(mockDio);
  });

  group('ProductRepositoryImpl Tests', () {
    test('should return list of products', () async {
      // Arrange
      final productsJsonList = json.decode(reader('product_list.json'));
      when(mockDio.get(any)).thenAnswer((_) async => Response(
        data: productsJsonList
      ));

      // Act
      final result = await productsRepositoryImpl.getAllProducts();

      // Assertion
      expect(result, isA<List<Product>>());
      verify(mockDio.get('products'));
    });

    test('should throw a NetworkError when something goes wrong', () {
      // Arrange
      when(mockDio.get(any)).thenThrow(DioError());

      // Act
      final call = productsRepositoryImpl.getAllProducts;

      expect(() => call(), throwsA(isA<NetworkError>()));
    });
  });
}