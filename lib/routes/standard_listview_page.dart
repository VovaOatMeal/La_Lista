import 'package:flutter/material.dart';
import 'package:la_lista/models/standard_tile.dart';
import 'package:la_lista/routes.dart';

import '../controllers/list_filler.dart';

class StandardListViewPage extends StatefulWidget {
  const StandardListViewPage({Key? key}) : super(key: key);

  // TODO: make appTitle app-static so it can be accessed throughout the app
  // so you don't need to specify it every time in each route.
  // And then just reference that value here.
  final _appTitle = "La Lista";

  @override
  State<StandardListViewPage> createState() => _StandardListViewPageState();
}

class _StandardListViewPageState extends State<StandardListViewPage> {
  // * for testing performance
  final dataTest = ListFiller.data;
  final moreData = [
    ...ListFiller.data,
    ...ListFiller.data,
    ...ListFiller.data,
    ...ListFiller.data
  ];

  void _openDetails(StandardTile data) {
    Navigator.of(context)
        .pushNamed(RouteGenerator.detailsPage, arguments: data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._appTitle),
      ),
      body: ListView.builder(
        itemCount: moreData.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: StandardTile.tileBuilder(moreData[index], _openDetails),
            );
          }
          return StandardTile.tileBuilder(moreData[index], _openDetails);
        },
      ),
    );
  }
}
