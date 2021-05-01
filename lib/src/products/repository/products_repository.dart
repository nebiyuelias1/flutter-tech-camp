import 'package:dio/dio.dart';
import 'package:flutter_tech_camp/common/exceptions.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';

abstract class ProductsRepository {
  Future<List<Product>> getAllProducts();
}

class ProductsRepositoryImpl implements ProductsRepository {
  final Dio _dio;

  ProductsRepositoryImpl(this._dio) : assert(_dio != null);

  @override
  Future<List<Product>> getAllProducts() async {
    try {
      final response = await _dio.get('products');
      List<Product> result = response.data.map<Product>((p) => Product.fromJson(p)).toList();
      return result;
    } on DioError {
      throw NetworkError('Network error');
    } catch (_) {
      throw AppError('Something went wrong');
    }
  }
}