import 'package:flutter_tech_camp/src/cart/models/cart_item.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';

part 'cart.g.dart';

@freezed
abstract class Cart with _$Cart {
  const Cart._();

  factory Cart({@required List<CartItem> items}) = _Cart;

  Cart addProduct(Product product) {
    final cartItemOrNull = items.firstWhere(
        (element) => element.product == product,
        orElse: () => null);

    if (cartItemOrNull != null) {
      // Our cart contains the product. Increment the multiplier.
      final newItems = List<CartItem>.from(items)
        ..remove(cartItemOrNull)
        ..add(CartItem(
            multiplier: cartItemOrNull.multiplier + 1, product: product));
      return this.copyWith(items: newItems);
    } else {
      final newItems = List<CartItem>.from(items)
        ..add(CartItem(multiplier: 1, product: product));
      return this.copyWith(items: newItems);
    }
  }

  Cart removeProduct(product) {
    final cartItem = items.firstWhere((element) => element.product == product);

    if (cartItem.multiplier > 1) {
      // If the item is more than 1 times present in our cart, then decrement
      // the multiplier.
      final newItems = List<CartItem>.from(items)
        ..remove(cartItem)
        ..add(CartItem(
            multiplier: cartItem.multiplier - 1, product: cartItem.product));

      return this.copyWith(items: newItems);
    } else {
      final newItems = List<CartItem>.from(items)..remove(cartItem);

      return this.copyWith(items: newItems);
    }
  }

  int get quantity {
    return items.fold(
        0, (previousValue, element) => previousValue + element.multiplier);
  }

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}
