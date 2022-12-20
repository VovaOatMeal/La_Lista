import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._appTitle),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text("First example tile"),
            leading: Icon(Icons.holiday_village_rounded),
          );
        },
      ),
    );
  }
}
