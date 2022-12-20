import 'package:flutter/material.dart';

import 'routes/standard_listview_page.dart';

class RouteGenerator {
  static const String homePage = '/';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => StandardListViewPage());
      default:
        throw const FormatException("No such page");
    }
  }
}
