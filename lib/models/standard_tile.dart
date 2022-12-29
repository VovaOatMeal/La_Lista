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
  static ListTile tileBuilder(StandardTile data,
      void Function(StandardTile data) onTapCallback) {

    return ListTile(
      title: Text(data.title),
      subtitle:
          data.description == null ? null : Text(data.description.toString()),
      leading: data.leadingIcon,
      trailing: data.trailingIcon,
      onTap: () => onTapCallback(data),
    );
  }
}
