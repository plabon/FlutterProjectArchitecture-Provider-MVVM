import 'package:flutter/material.dart';
import 'package:flutter_architecture_with_provider/locator.dart';
import 'package:flutter_architecture_with_provider/router.dart' as route;
import 'package:flutter_architecture_with_provider/utils/constants.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: REPO_LIST_VIEW,
      onGenerateRoute: route.Router.generateRoute,
    );
  }
}
