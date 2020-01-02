/**
 * Created by Mahmud Ahsan
 * https://github.com/mahmudahsan
 */
import 'package:flutter/material.dart';
import 'dart:math';

class TodosColor {
  static const kPrimaryColorCode = 0xff007ee3;
  static const kSecondaryColorCode = 0xffffffff;

  static TodosColor sharedInstance = TodosColor._();

  List<Color> storedColors;

  TodosColor._() {
    storedColors = List.generate(100, (pos) {
      return Color.fromARGB(0xff - pos * 10, Random().nextInt(255),
          Random().nextInt(255), Random().nextInt(255));
    });
  }

  Color leadingTaskColor(int pos) {
    switch (pos) {
      case 0:
        return Colors.blue[900];
      case 1:
        return Colors.blue[700];
      case 2:
        return Colors.blue[500];
    }

    if (pos < storedColors.length) {
      return storedColors[pos];
    }

    // default case when need more than 100 colors
    return Color.fromARGB(0xff - pos * 10, Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255));
  }
}
