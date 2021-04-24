// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductsStateTearOff {
  const _$ProductsStateTearOff();

// ignore: unused_element
  ProductsInitialState initial() {
    return const ProductsInitialState();
  }

// ignore: unused_element
  ProductsLoadingState loading() {
    return const ProductsLoadingState();
  }

// ignore: unused_element
  ProductsLoadingSuccessState loadSuccess({@required List<Product> products}) {
    return ProductsLoadingSuccessState(
      products: products,
    );
  }

// ignore: unused_element
  ProductsErrorState error({@required String message}) {
    return ProductsErrorState(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsState = _$ProductsStateTearOff();

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(List<Product> products),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(List<Product> products),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitialState value),
    @required TResult loading(ProductsLoadingState value),
    @required TResult loadSuccess(ProductsLoadingSuccessState value),
    @required TResult error(ProductsErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitialState value),
    TResult loading(ProductsLoadingState value),
    TResult loadSuccess(ProductsLoadingSuccessState value),
    TResult error(ProductsErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class $ProductsInitialStateCopyWith<$Res> {
  factory $ProductsInitialStateCopyWith(ProductsInitialState value,
          $Res Function(ProductsInitialState) then) =
      _$ProductsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsInitialStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsInitialStateCopyWith<$Res> {
  _$ProductsInitialStateCopyWithImpl(
      ProductsInitialState _value, $Res Function(ProductsInitialState) _then)
      : super(_value, (v) => _then(v as ProductsInitialState));

  @override
  ProductsInitialState get _value => super._value as ProductsInitialState;
}

/// @nodoc
class _$ProductsInitialState implements ProductsInitialState {
  const _$ProductsInitialState();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(List<Product> products),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(List<Product> products),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitialState value),
    @required TResult loading(ProductsLoadingState value),
    @required TResult loadSuccess(ProductsLoadingSuccessState value),
    @required TResult error(ProductsErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitialState value),
    TResult loading(ProductsLoadingState value),
    TResult loadSuccess(ProductsLoadingSuccessState value),
    TResult error(ProductsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductsInitialState implements ProductsState {
  const factory ProductsInitialState() = _$ProductsInitialState;
}

/// @nodoc
abstract class $ProductsLoadingStateCopyWith<$Res> {
  factory $ProductsLoadingStateCopyWith(ProductsLoadingState value,
          $Res Function(ProductsLoadingState) then) =
      _$ProductsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsLoadingStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadingStateCopyWith<$Res> {
  _$ProductsLoadingStateCopyWithImpl(
      ProductsLoadingState _value, $Res Function(ProductsLoadingState) _then)
      : super(_value, (v) => _then(v as ProductsLoadingState));

  @override
  ProductsLoadingState get _value => super._value as ProductsLoadingState;
}

/// @nodoc
class _$ProductsLoadingState implements ProductsLoadingState {
  const _$ProductsLoadingState();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(List<Product> products),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(List<Product> products),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitialState value),
    @required TResult loading(ProductsLoadingState value),
    @required TResult loadSuccess(ProductsLoadingSuccessState value),
    @required TResult error(ProductsErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitialState value),
    TResult loading(ProductsLoadingState value),
    TResult loadSuccess(ProductsLoadingSuccessState value),
    TResult error(ProductsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadingState implements ProductsState {
  const factory ProductsLoadingState() = _$ProductsLoadingState;
}

/// @nodoc
abstract class $ProductsLoadingSuccessStateCopyWith<$Res> {
  factory $ProductsLoadingSuccessStateCopyWith(
          ProductsLoadingSuccessState value,
          $Res Function(ProductsLoadingSuccessState) then) =
      _$ProductsLoadingSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsLoadingSuccessStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadingSuccessStateCopyWith<$Res> {
  _$ProductsLoadingSuccessStateCopyWithImpl(ProductsLoadingSuccessState _value,
      $Res Function(ProductsLoadingSuccessState) _then)
      : super(_value, (v) => _then(v as ProductsLoadingSuccessState));

  @override
  ProductsLoadingSuccessState get _value =>
      super._value as ProductsLoadingSuccessState;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(ProductsLoadingSuccessState(
      products:
          products == freezed ? _value.products : products as List<Product>,
    ));
  }
}

/// @nodoc
class _$ProductsLoadingSuccessState implements ProductsLoadingSuccessState {
  const _$ProductsLoadingSuccessState({@required this.products})
      : assert(products != null);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductsState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductsLoadingSuccessState &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  $ProductsLoadingSuccessStateCopyWith<ProductsLoadingSuccessState>
      get copyWith => _$ProductsLoadingSuccessStateCopyWithImpl<
          ProductsLoadingSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(List<Product> products),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(List<Product> products),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitialState value),
    @required TResult loading(ProductsLoadingState value),
    @required TResult loadSuccess(ProductsLoadingSuccessState value),
    @required TResult error(ProductsErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitialState value),
    TResult loading(ProductsLoadingState value),
    TResult loadSuccess(ProductsLoadingSuccessState value),
    TResult error(ProductsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadingSuccessState implements ProductsState {
  const factory ProductsLoadingSuccessState(
      {@required List<Product> products}) = _$ProductsLoadingSuccessState;

  List<Product> get products;
  @JsonKey(ignore: true)
  $ProductsLoadingSuccessStateCopyWith<ProductsLoadingSuccessState>
      get copyWith;
}

/// @nodoc
abstract class $ProductsErrorStateCopyWith<$Res> {
  factory $ProductsErrorStateCopyWith(
          ProductsErrorState value, $Res Function(ProductsErrorState) then) =
      _$ProductsErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ProductsErrorStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsErrorStateCopyWith<$Res> {
  _$ProductsErrorStateCopyWithImpl(
      ProductsErrorState _value, $Res Function(ProductsErrorState) _then)
      : super(_value, (v) => _then(v as ProductsErrorState));

  @override
  ProductsErrorState get _value => super._value as ProductsErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ProductsErrorState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ProductsErrorState implements ProductsErrorState {
  const _$ProductsErrorState({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductsErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ProductsErrorStateCopyWith<ProductsErrorState> get copyWith =>
      _$ProductsErrorStateCopyWithImpl<ProductsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(List<Product> products),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(List<Product> products),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProductsInitialState value),
    @required TResult loading(ProductsLoadingState value),
    @required TResult loadSuccess(ProductsLoadingSuccessState value),
    @required TResult error(ProductsErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProductsInitialState value),
    TResult loading(ProductsLoadingState value),
    TResult loadSuccess(ProductsLoadingSuccessState value),
    TResult error(ProductsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsErrorState implements ProductsState {
  const factory ProductsErrorState({@required String message}) =
      _$ProductsErrorState;

  String get message;
  @JsonKey(ignore: true)
  $ProductsErrorStateCopyWith<ProductsErrorState> get copyWith;
}
