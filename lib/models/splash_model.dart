import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Splash {
  final Color backgroundColor;
  final Color primaryColor;
  final Color secondColor;
  final Image image;

  Splash({
    @required this.backgroundColor,
    @required this.primaryColor,
    @required this.secondColor,
    @required this.image});
}
