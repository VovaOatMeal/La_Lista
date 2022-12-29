import 'package:flutter/material.dart';
import 'package:la_lista/routes/details_page.dart';

import 'routes/standard_listview_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String detailsPage = '/details';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const StandardListViewPage());
      case detailsPage:
        return MaterialPageRoute(builder: (_) => const DetailsPage(),
        settings: settings);
      default:
        throw const FormatException("No such page");
    }
  }
}
