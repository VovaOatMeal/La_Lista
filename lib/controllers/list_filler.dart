import 'package:flutter/material.dart';

import '../models/standard_tile.dart';

/// Used to fill different types of lists specified in [ListType].
///
/// [generateData] is used to create predefined list of [ListTile] that is filled
/// using [StandardTile]. Fills only lists specified in [ListType].
///
abstract class ListFiller {
  static final data = <StandardTile>[
    StandardTile(
      "Grand Piano",
      description: "Grand piano is a very popular instrument across "
          "many genres. It's often used in pop, jazz and orchestral music.",
      leadingIcon: const Icon(Icons.piano_rounded),
    ),
    StandardTile("Honky-tonk Piano"),
    StandardTile(
      "Jazz Organ",
      description: "Organ is a common member of church and gospel music. "
          "It has a very deep and colossal sound. Jazz organ is a smaller version of it. "
          "It has a mellower sound and is often used in Jazz, R&B and Blues.",
    ),
    StandardTile("Click Organ"),
    StandardTile("Accordion"),
    StandardTile(
      "Guitar",
      description: "You know this one.",
    ),
    StandardTile("Classical Guitar"),
    StandardTile("Rock Guitar"),
    StandardTile(
      "Bass Guitar",
      description: "That juicy low end that you like.",
    ),
    StandardTile("Acoustic Bass"),
    StandardTile("Synth Bass"),
    StandardTile(
      "String Ensemble",
      description:
          "Oh, those strings... My love. The all-around orchestral instrument.",
    ),
    StandardTile("Banjo"),
    StandardTile(
      "Choir",
      description: "Human voices make any music greater.",
      leadingIcon: const Icon(Icons.people_alt_rounded),
    ),
    StandardTile(
      "Alto Sax",
      description: "Who turned on Careless Whisper?",
    ),
    StandardTile("Trumpet"),
    StandardTile("Brass Section"),
    StandardTile(
      "Flute",
      description: "WHat a lovely wind instrument!",
    ),
    StandardTile("Vibraphone"),
    StandardTile("Marimba"),
    StandardTile(
      "Celesta",
      description: "Has anybody seen my owl?",
    ),
    StandardTile("Timpani"),
    StandardTile("Drum Kit"),
  ];

  // TODO: make possible to show trailing icon (e.g. "more" arrow) when description is big and overflow
  static List<ListTile> generateData(ListType listType) {
    List<ListTile> listOfTiles = [];

    switch (listType) {
      case ListType.standardList:
        {
          for (var entry in data) {
            listOfTiles.add(
              ListTile(
                title: Text(entry.title),
                subtitle: entry.description == null
                    ? null
                    : Text(entry.description.toString()),
                leading: entry.leadingIcon,
                trailing: entry.trailingIcon,
              ),
            );
          }
          return listOfTiles;
        }

      case ListType.gridView:
        // TODO: Handle gridView filling.
        break;
      case ListType.expandableList:
        // TODO: Handle expandableList filling.
        break;
    }

    return listOfTiles;
  }

  // * for testing performance
  static ListTile tileBuilder(ListType listType, int index) {
    switch (listType) {
      case ListType.standardList:
        {
          return ListTile(
            title: Text(data[index].title),
            subtitle: data[index].description == null
                ? null
                : Text(data[index].description.toString()),
            leading: data[index].leadingIcon,
            trailing: data[index].trailingIcon,
          );
        }

      case ListType.gridView:
        // TODO: Handle gridView filling.
        break;
      case ListType.expandableList:
        // TODO: Handle expandableList filling.
        break;
    }

    return const ListTile();
  }
}

enum ListType {
  standardList,
  gridView,
  expandableList,
}
