import 'package:flutter/material.dart';
import 'package:flutter_architecture_with_provider/ui/screens/repolistview.dart';
import 'package:flutter_architecture_with_provider/utils/constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case REPO_LIST_VIEW:
        return MaterialPageRoute(builder: (_) => RepoListView());
      case REPO_DETAILS_VIEW:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
