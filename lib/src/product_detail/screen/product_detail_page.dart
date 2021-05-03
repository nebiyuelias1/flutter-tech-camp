import 'package:flutter/material.dart';
import 'package:flutter_tech_camp/src/products/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Product Detail",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _ProductDetailPage(product: product),
      bottomNavigationBar: _BuildBottomNavigationBar(),
    );
  }
}

class _BuildBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          return showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                content: SingleChildScrollView(
                  child: Text(
                      'This button is still under developement \n will be implement by teacher'),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Done'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.card_travel,
                color: Colors.white,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "ADD TO BAG",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductDetailPage extends StatelessWidget {
  final Product product;

  const _ProductDetailPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildProductImagesWidgets(),
                _buildProductTitleWidget(),
                SizedBox(height: 12.0),
                _buildPriceWidgets(),
                SizedBox(height: 12.0),
                _buildDivider(screenSize),
                _buildDivider(screenSize),
                SizedBox(height: 12.0),
                SizedBox(height: 12.0),
                _buildDetails(screenSize),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[600],
          width: screenSize.width,
          height: 0.25,
        ),
      ],
    );
  }

  _buildProductImagesWidgets() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child:  Container(
              child: Image.network(
                product.image,
                fit: BoxFit.scaleDown,
              ),
          ),
        ),
      ),
    );
  }

  _buildProductTitleWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: Text(
          //name,
          product.title,
          style: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }

  _buildPriceWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "\$${product.price}",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildDetails(Size screenSize) {
    return Container(
      height: screenSize.height / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "Description",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            // height: 100.0,
            child: Column(
              children: <Widget>[
                Text(
                  product.description,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
