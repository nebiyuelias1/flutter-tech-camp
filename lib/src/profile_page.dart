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
                    'https://www.woolha.com/media/2020/03/eevee.png',
                  ),
                  minRadius: 50,
                  maxRadius: 75)),
          SizedBox(height: 5),
          //User FullName
          Text(
            'John doe',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          //Username
          Text(
            '@johndoe',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(height: 50,),
          _infon('First Name', 'John'),
          SizedBox(height: 10,),
          Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          _infon('Last Name', 'Doe'),
           SizedBox(height: 10,),
           Divider(
             height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
           ),
          _infon('My Email', 'John@gmail.com'),
          SizedBox(height: 10,),
           Divider(
             height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
           ),
          _infon('My Address', 'Bole Gerji'),
          SizedBox(height: 10,),
           Divider(
             height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
           ),
          _infon('My Phone', '+251904115824'),

        ]);
  }
}

Widget _infon(String labelName,String text){
  return Container(
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left:15)),
        Text(labelName,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
         SizedBox(width: 140,),
        Text(text,style:TextStyle(fontSize: 15),)

      ]
    ),
  );
}
