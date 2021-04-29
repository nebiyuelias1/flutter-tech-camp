import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_camp/src/products/cubit/products_cubit.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_tech_camp/src/products/repository/products_repository.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ProductsCubit(ProductsRepositoryImpl(Dio()))..getAllProducts(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.of(context).push(Routes.profilePage);
            },
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        body: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsInitialState) {
              return Text('Initial State');
            } else if (state is ProductsLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ProductsLoadingSuccessState) {
              return _Products(products: state.products);
            } else if (state is ProductsErrorState) {
              return Text('Error: ' + state.message);
            }

            return SizedBox();
          },
        ),
      ),
    );
  }
}

class _Products extends StatelessWidget {
  final List<Product> products;

  const _Products({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (_, index) {
        return _Product(product: this.products[index]);
      },
    );
  }
}

class _Product extends StatelessWidget {
  final Product product;

  const _Product({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Product: ' + product.title);
  }
}
