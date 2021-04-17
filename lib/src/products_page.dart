import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return Text('Product Item');
  }
}

