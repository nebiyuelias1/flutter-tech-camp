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
    return ListView.builder(
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
    return Card(
      child: ListTile(
        leading: Image.network(cartItem.product.image),
        title: Text(
          cartItem.product.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: _buildProductContainer(
                  '${cartItem.multiplier} x ${cartItem.product.price}'),
            ),
            Row(
              children: [
                _buildTextButton(context, Icons.remove, false),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${cartItem.multiplier}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                _buildTextButton(context, Icons.add, true)
              ],
            )
          ],
        ),
      ),
    );
  }

  TextButton _buildTextButton(
      BuildContext context, dynamic icon, bool isIncrementing) {
    return TextButton(
      onPressed: () {
        final cubit = context.read<CartCubit>();
        if (isIncrementing) {
          cubit.addToCart(cartItem.product);
        } else {
          cubit.removeFromCart(cartItem.product);
        }
      },
      child: Icon(icon),
    );
  }

  Container _buildProductContainer(String _productPrice) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
