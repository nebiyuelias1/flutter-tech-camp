import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_tech_camp/src/products_page.dart';

import '../profile_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: ProductsPage, initial: true),
  MaterialRoute(page: ProfilePage)
])
class $AppRouter {}