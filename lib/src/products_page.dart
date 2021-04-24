import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Product LIST',
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
      body: _Products(),
    );
  }
}

class _Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (_, index) {
        return _Product();
      },
    );
  }
}

class _Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 15.0 / 11.0,
            child: Image.asset('assets/images/T-shirt1.jpeg'),
          ),
          Container(
            width: 200,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: _buildText('ProductName', 15, true),
                ),
                 _buildProductContainer('220 ETB'),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Container _buildProductContainer(String _productPrice) {
    return Container(
                height: 21,
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildText('200 ETB', 15, false),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                      iconSize: 20.0,
                      padding: EdgeInsets.only(bottom: 5),
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
      style: TextStyle(fontSize: _textSize, fontWeight: _textBold),
    );
  }
}
