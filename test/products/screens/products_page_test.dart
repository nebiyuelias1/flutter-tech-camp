import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tech_camp/injection_container.dart';
import 'package:flutter_tech_camp/src/cart/cubit/cart_cubit.dart';
import 'package:flutter_tech_camp/src/cart/models/cart.dart';
import 'package:flutter_tech_camp/src/products/cubit/products_cubit.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_tech_camp/src/products/screens/products_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../fixtures/fixture_reader.dart';

class MockProductsCubit extends Mock implements ProductsCubit {}

class MockCartCubit extends Mock implements CartCubit {}

void main() {
  MockProductsCubit mockProductsCubit;
  MockCartCubit mockCartCubit;

  setUp(() {
    mockProductsCubit = MockProductsCubit();
    mockCartCubit = MockCartCubit();

    sl.registerFactory<CartCubit>(() => mockCartCubit);
    sl.registerFactory<ProductsCubit>(() => mockProductsCubit);
  });

  tearDown(() {
    mockProductsCubit.close();
    mockCartCubit.close();
    sl.reset();
  });

  group('ProductsPage Tests', () {
    testWidgets(
        'should display a loading indicator while data is being fetched',
        (WidgetTester tester) async {
      when(mockProductsCubit.state).thenReturn(ProductsLoadingState());
      when(mockCartCubit.state).thenReturn(CartState(cart: Cart(items: [])));

      await tester.pumpWidget(MaterialApp(
        home: ProductsPage(),
      ));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should display a list of products when loading is done',
        (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        final productList = json
            .decode(reader('product_list.json'))
            .map<Product>((p) => Product.fromJson(p))
            .toList();
        when(mockProductsCubit.state)
            .thenReturn(ProductsLoadingSuccessState(products: productList));
        when(mockCartCubit.state).thenReturn(CartState(cart: Cart(items: [])));

        await tester.pumpWidget(MaterialApp(
          home: ProductsPage(),
        ));

        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(
            find.text('Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops'),
            findsOneWidget);
      });
    });
  });
}
