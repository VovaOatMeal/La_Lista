import 'package:flutter/material.dart';

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
  final data = ListFiller.generateData(ListType.standardList);
  // * for testing performance
  final dataTest = ListFiller.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._appTitle),
      ),
      // * 0. Old Approach
      /*body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return data[index];
        },
      ),*/
      // * 1. Simple Approach
      /*body: ListView(
        children: data,
      ),*/
      // * 2. More complex and probably best approach in
      // * such cases (when using list building on demand)
      body: ListView.builder(
        itemCount: dataTest.length,
        itemBuilder: (context, index) {
          return ListFiller.tileBuilder(ListType.standardList, index);
        },
      ),
    );
  }
}
