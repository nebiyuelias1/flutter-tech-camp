import 'package:flutter_tech_camp/src/cart/models/cart.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

part 'cart_cubit.freezed.dart';

class CartCubit extends HydratedCubit<CartState> {
  CartCubit() : super(CartState(cart: Cart(items: [])));

  void addToCart(Product product) {
    final newCart = state.cart.addProduct(product);
    final newState = state.copyWith(cart: newCart);
    emit(newState);
  }

  void removeFromCart(product) {
    final newCart = state.cart.removeProduct(product);
    final newState = state.copyWith(cart: newCart);
    emit(newState);
  }

  @override
  CartState fromJson(Map<String, dynamic> json) {
    return CartState(cart: Cart.fromJson(json));
  }

  @override
  Map<String, dynamic> toJson(CartState state) {
    return state.cart.toJson();
  }
}
