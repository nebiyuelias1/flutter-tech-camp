import 'package:bloc/bloc.dart';
import 'package:flutter_tech_camp/common/exceptions.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_tech_camp/src/products/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepository _productsRepository;

  ProductsCubit(this._productsRepository) : super(ProductsInitialState());

  Future<void> getAllProducts() async {
    try {
      emit(ProductsLoadingState());
      final products = await _productsRepository.getAllProducts();
      emit(ProductsLoadingSuccessState(products: products));
    } on NetworkError catch(e) {
      emit(ProductsErrorState(message: e.message));
    } on AppError catch(e) {
      emit(ProductsErrorState(message: e.message));
    }
  }
}