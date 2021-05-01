part of 'cart_cubit.dart';

@freezed
abstract class CartState with _$CartState {
  factory CartState({@required Cart cart}) = _CartState;
}
