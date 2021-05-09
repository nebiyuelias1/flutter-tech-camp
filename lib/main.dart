import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech_camp/injection_container.dart';
import 'package:flutter_tech_camp/src/routes/router.gr.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  // https://github.com/flutter/flutter/pull/38464
  // Changes in Flutter v1.9.4 require you to call WidgetsFlutterBinding.ensureInitialized()
  // before using any plugins if the code is executed before runApp.
  // As a result, you will need the following line if you're using Flutter >=1.9.4.
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  registerDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: ExtendedNavigator(
        router: AppRouter(),
      ),
    );
  }
}
