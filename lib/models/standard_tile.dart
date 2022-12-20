import 'package:flutter/widgets.dart';

import 'abstr_standard_tile.dart';

class StandardTile implements Tile {
  @override
  final String title;
  final String? description;
  final Icon? leadingIcon;
  final Icon? trailingIcon;

  StandardTile(this.title,
      {this.description, this.leadingIcon, this.trailingIcon});

  
}
