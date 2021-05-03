// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../cart/screens/cart_page.dart';
import '../product_detail/product_detail_page.dart';
import '../products/screens/products_page.dart';
import '../profile/screens/profile_page.dart';

class Routes {
  static const String productsPage = '/';
  static const String profilePage = '/profile-page';
  static const String cartPage = '/cart-page';
  static const String productDetailPage = '/product-detail-page';
  static const all = <String>{
    productsPage,
    profilePage,
    cartPage,
    productDetailPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.productsPage, page: ProductsPage),
    RouteDef(Routes.profilePage, page: ProfilePage),
    RouteDef(Routes.cartPage, page: CartPage),
    RouteDef(Routes.productDetailPage, page: ProductDetailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ProductsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductsPage(),
        settings: data,
      );
    },
    ProfilePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfilePage(),
        settings: data,
      );
    },
    CartPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CartPage(),
        settings: data,
      );
    },
    ProductDetailPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductDetailPage(),
        settings: data,
      );
    },
  };
}
