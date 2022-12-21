import 'package:flutter/material.dart';

import 'abstr_tile.dart';

/// A model class that describes standard tile with [title], [description],
/// [leadingIcon] and [trailingIcon].
///
/// [tileBuilder] builds a [ListTile] using the provided data.
class StandardTile implements Tile {
  @override
  final String title;
  final String? description;
  final Icon? leadingIcon;
  final Icon? trailingIcon;

  StandardTile(this.title,
      {this.description, this.leadingIcon, this.trailingIcon});

  // TODO: make possible to show trailing icon (e.g. "more" arrow) when description is big and overflow
  static ListTile tileBuilder(int index, List<StandardTile> dataList) {
    final data = dataList;

    return ListTile(
      title: Text(data[index].title),
      subtitle: data[index].description == null
          ? null
          : Text(data[index].description.toString()),
      leading: data[index].leadingIcon,
      trailing: data[index].trailingIcon,
    );
  }
}
