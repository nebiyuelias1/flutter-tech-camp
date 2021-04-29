import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'routes/router.gr.dart';

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
      body: _Carts(),
    );
  }
}

class _Carts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 6 / 1.5,
      ),
      itemCount: 10,
      itemBuilder: (_, index) {
        return _Cart();
      },
    );
  }
}

class _Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/images/T-shirt1.jpeg'),
          ),
          Container(
           
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildProductContainer('Product Name', '2 x 200'),
                Row(
                  children: [
                    _buildTextButton('-'),
                    Text('2'),
                    _buildTextButton('+')
                  ],
                )
              ],
            ),
          )
        ],
    );
  }

  TextButton _buildTextButton(String _textButton) {
    return TextButton(
      onPressed: () {},
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
