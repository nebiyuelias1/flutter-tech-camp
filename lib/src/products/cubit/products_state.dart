part of 'products_cubit.dart';


@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = ProductsInitialState;

  const factory ProductsState.loading() = ProductsLoadingState;

  const factory ProductsState.loadSuccess({@required List<Product> products}) =
      ProductsLoadingSuccessState;

  const factory ProductsState.error({@required String message}) =
      ProductsErrorState;
}