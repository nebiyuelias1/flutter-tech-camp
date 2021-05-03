import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_camp/injection_container.dart';
import 'package:flutter_tech_camp/src/profile/cubit/profile_cubit.dart';
import 'package:flutter_tech_camp/src/profile/models/profile.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => sl<ProfileCubit>()..getUserProfile(),
    child: 
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Profile',
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
             size: 30.0,
            color: Colors.white
          ),
        ),
      ),
      body: RefreshIndicator(
          onRefresh: () => null,
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state is ProfileInitialState) {
                return Text('Initial State');
              } else if (state is ProfileLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is ProfileLoadingSuccessState) {
                  return _Profile(profile: state.profile);
              } else if (state is ProfileErrorState) {
                return Text('Error: ' + state.message);
              }

              return SizedBox();
            },
          ),
        ),
    ),
    );
  }
}

class _Profile extends StatelessWidget {
    final Profile profile;

  const _Profile({Key key, this.profile}) : super(key: key);
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
          _buildString('${profile.name.firstname} ${profile.name.lastname}', 25, true, TextAlign.center),
          //Username
          _buildString(profile.username, 15, false, TextAlign.center),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15.5,
          ),
          _displayInfon('First Name', '${profile.name.firstname}', context),
          _buildLineDivider(),
          _displayInfon('Last Name', '${profile.name.lastname}', context),
          _buildLineDivider(),
          _displayInfon('My Email', '${profile.email}', context),
          _buildLineDivider(),
          _displayInfon('My Address', '${profile.address.zipcode},${profile.address.street},${profile.address.city}', context),
          _buildLineDivider(),
          _displayInfon('My Phone', '${profile.phone}', context),
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
