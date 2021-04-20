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
            aspectRatio: 20.0 / 11.0,
            child: Image.asset('assets/images/T-shirt1.jpeg'),
          ),
          Container(
            width: 200,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('ItemName'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('200 ETB'),
                    SizedBox(width: 10),
                    ButtonBar(
                      children: <Widget>[
                        IconButton(iconSize: 20,
                          icon: Icon(Icons.add), onPressed: () {})
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

