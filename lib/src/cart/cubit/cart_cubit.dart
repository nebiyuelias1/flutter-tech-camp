import 'package:bloc/bloc.dart';
import 'package:flutter_tech_camp/src/cart/models/cart.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState(cart: Cart(items: [])));

  void addToCart(Product product) {
    final newCart = state.cart.addProduct(product);
    final newState = state.copyWith(cart: newCart);
    emit(newState);
  }
}
