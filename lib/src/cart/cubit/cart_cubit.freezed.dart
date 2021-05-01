// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

// ignore: unused_element
  _CartState call({@required Cart cart}) {
    return _CartState(
      cart: cart,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Cart get cart;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_value.copyWith(
      cart: cart == freezed ? _value.cart : cart as Cart,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    if (_value.cart == null) {
      return null;
    }
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({Cart cart});

  @override
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_CartState(
      cart: cart == freezed ? _value.cart : cart as Cart,
    ));
  }
}

/// @nodoc
class _$_CartState implements _CartState {
  _$_CartState({@required this.cart}) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  factory _CartState({@required Cart cart}) = _$_CartState;

  @override
  Cart get cart;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith;
}
