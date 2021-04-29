import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.of(context).push(Routes.productsPage);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: _Profile(),
    );
  }
}

class _Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          //Profileimage
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.kindpng.com/picc/m/173-1731325_person-icon-png-transparent-png.png',
                ),
                minRadius: 50,
                maxRadius: 75),
          ),
          SizedBox(height: 5),
          //User FullName
          _buildString('John Doe', 25, true, TextAlign.center),
          //Username
          _buildString('@johndoe', 15, false, TextAlign.center),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15.5,
          ),
          _displayInfon('First Name', 'John', context),
          _buildLineDivider(),
          _displayInfon('Last Name', 'Doe', context),
          _buildLineDivider(),
          _displayInfon('My Email', 'john@gmail.com', context),
          _buildLineDivider(),
          _displayInfon('My Address', '12926-3879,new road,kilcole', context),
          _buildLineDivider(),
          _displayInfon('My Phone', '1-570-236-7033', context),
        ]);
  }

  Divider _buildLineDivider() {
    return Divider(
      height: 20,
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }

  Text _buildString(
      String _text, double _textSize, bool _isBold, TextAlign _direction) {
    FontWeight _bold = FontWeight.normal;
    if (_isBold == true) {
      _bold = FontWeight.bold;
    }
    return Text(
      _text,
      style: TextStyle(
        fontSize: _textSize,
        fontWeight: _bold,
      ),
      textAlign: _direction,
    );
  }

  Container _displayInfon(
      String _labelName, String _labelValue, BuildContext _context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: _buildString(_labelName, 20, true, TextAlign.left),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: _buildString(_labelValue, 15, false, TextAlign.end),
        )
      ]),
    );
  }
}
