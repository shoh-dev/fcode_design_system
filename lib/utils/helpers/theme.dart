import 'package:flutter/material.dart';

extension ThemeHelpers on BuildContext {
  //theme
  ThemeData get theme => Theme.of(this);

  Color get dividerColor => theme.dividerColor;

  //text theme
  Typography get textTheme => theme.typography;

  //color scheme
  ColorScheme get colorScheme => theme.colorScheme;

  //primary color
  Color get primary => theme.colorScheme.primary;

  //secondary color
  Color get secondary => theme.colorScheme.secondary;

  //sruface color
  Color get surface => theme.colorScheme.surface;

  //error color
  Color get error => theme.colorScheme.error;

  //size
  Size get size => MediaQuery.sizeOf(this);

  //height
  double get height => size.height;

  //width
  double get width => size.width;
}
