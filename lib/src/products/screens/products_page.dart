import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_camp/injection_container.dart';
import 'package:flutter_tech_camp/src/cart/cubit/cart_cubit.dart';
import 'package:flutter_tech_camp/src/products/cubit/products_cubit.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ProductsCubit>()..getAllProducts(),
        ),
        BlocProvider(create: (context) => sl<CartCubit>())
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Products List',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
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
        body: RefreshIndicator(
          onRefresh: () => null,
          child: BlocBuilder<ProductsCubit, ProductsState>(
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
        floatingActionButton: _CartFloatingActionButton(),
      ),
    );
  }
}

class _CartFloatingActionButton extends StatelessWidget {
  const _CartFloatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.of(context).push(Routes.cartPage);
          },
          child: Badge(
            badgeContent: Text(
              '${state.cart.quantity}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            showBadge: state.cart.quantity > 0,
            position: BadgePosition.topEnd(top: -12, end: -20),
            child: Icon(Icons.shopping_cart_rounded),
          ),
        );
      },
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
        childAspectRatio: 1 / 1.5,
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
    return Card(
      margin: EdgeInsets.all(8.0),
      clipBehavior: Clip.antiAlias,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.network(
                product.image,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: _buildText(product.title, 15, true),
                  ),
                  _buildProductContainer(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildProductContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildText('${product.price} ETB', 15, false),
          IconButton(
            icon: Icon(Icons.add_shopping_cart_rounded),
            onPressed: () {
              context.read<CartCubit>().addToCart(product);
            },
            iconSize: 20.0,
          ),
        ],
      ),
    );
  }

  Text _buildText(String _text, double _textSize, bool _isBold) {
    FontWeight _textBold;
    if (_isBold == true) {
      _textBold = FontWeight.bold;
    } else {
      _textBold = FontWeight.normal;
    }
    return Text(
      _text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: _textSize,
        fontWeight: _textBold,
      ),
    );
  }
}
