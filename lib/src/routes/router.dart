import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_tech_camp/src/product_detail/product_detail_page.dart';
import 'package:flutter_tech_camp/src/products/screens/products_page.dart';

import '../cart/screens/cart_page.dart';
import '../profile/screens/profile_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: ProductsPage, initial: true),
  MaterialRoute(page: ProfilePage),
  MaterialRoute(page: CartPage),
  MaterialRoute(page: ProductDetailPage),

])
class $AppRouter {}