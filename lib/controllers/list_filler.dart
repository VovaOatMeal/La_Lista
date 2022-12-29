import 'package:flutter/material.dart';

import '../models/standard_tile.dart';

/// For now just holds the data needed in the program.
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
      description: "What a lovely wind instrument!",
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
}
