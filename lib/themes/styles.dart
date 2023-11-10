import 'package:flutter/material.dart';
import 'package:flutter_todo_app/themes/my_color.dart';


class MyCustomStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: MyColor.neutralWhite,
    fontFamily: 'SF Pro Display'
  );
  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 18,
    color: Colors.grey,
  );
  static const Color primaryColor = Colors.blue;
}
