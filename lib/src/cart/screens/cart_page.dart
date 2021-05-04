import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_camp/src/cart/cubit/cart_cubit.dart';
import 'package:flutter_tech_camp/src/cart/models/cart.dart';
import 'package:flutter_tech_camp/src/cart/models/cart_item.dart';

import '../../../injection_container.dart';
import '../../routes/router.gr.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.of(context).push(Routes.productsPage);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: BlocProvider(
        create: (_) => sl<CartCubit>(),
        child: BlocBuilder<CartCubit, CartState>(builder: (context, state) {
          if (state is CartState) {
            return _Carts(
              cart: state.cart,
            );
          }
          return SizedBox();
        }),
      ),
    );
  }
}

class _Carts extends StatelessWidget {
  final Cart cart;

  const _Carts({Key key, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 6 / 1.5,
      ),
      itemCount: cart.items.length,
      itemBuilder: (_, index) {
        return _Cart(cartItem: cart.items[index]);
      },
    );
  }
}

class _Cart extends StatelessWidget {
  final CartItem cartItem;

  const _Cart({Key key, this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: NetworkImage(cartItem.product.image),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductContainer(
                  '${cartItem.product.title}',
                  '${cartItem.multiplier} x ${cartItem.product.price}'),
              Row(
                children: [
                  _buildTextButton(context, '-', false),
                  Text('${cartItem.multiplier}'),
                  _buildTextButton(context, '+', true)
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  TextButton _buildTextButton(BuildContext context, String _textButton,
      bool isIncrementing) {
    return TextButton(
      onPressed: () {
        final cubit = context.read<CartCubit>();
        if (isIncrementing) {
          cubit.addToCart(cartItem.product);
        } else {
          cubit.removeFromCart(cartItem.product);
        }
      },
      child: Text(
        _textButton,
        style: TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }

  Container _buildProductContainer(String _productName, String _productPrice) {
    return Container(
      // padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildText(_productName, 20, true),
          _buildText(_productPrice, 15, false),
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
      style: TextStyle(fontSize: _textSize, fontWeight: _textBold),
    );
  }
}
