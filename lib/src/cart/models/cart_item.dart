import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem {
  factory CartItem({@required int multiplier, @required Product product}) =
      _CartItem;
}
