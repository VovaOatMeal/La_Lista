import 'package:flutter/material.dart';
import 'package:la_lista/models/standard_tile.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // * this is used to receive arguments from the calling class
    final element = ModalRoute.of(context)!.settings.arguments as StandardTile;

    return Scaffold(
      appBar: AppBar(
        title: Text(element.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 128,
              height: 128,
              child: element.leadingIcon ?? const Placeholder(),
            ),
            const SizedBox(height: 24),
            Text(
              element.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 64),
            Container(
              width: MediaQuery.of(context).size.width,
              child: element.description == null
                  ? null
                  : Text(element.description!),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Close"),
            )
          ],
        ),
      ),
    );
  }
}
