import 'package:flutter/material.dart';
import 'package:shopping_app/res/palette.dart';

class AppStrings {
  static List<String> locations = [
    'Puebla (PUE)',
    'CDMX (CMX)',
    'Guadalajara (GDL)',
    'Monterrey (MTY)'
  ];
}

class AppTextStyles {
  static TextStyle selectedDropDownTextStyle = new TextStyle (
    color: Colors.white,
    fontSize: 16.0
  );

  static TextStyle dropDownTextStyle = new TextStyle(
    color: Palette.beautifulGray,
    fontSize: 16.0
  );

  static TextStyle bigTittle = new TextStyle(
    color: Colors.white,
    fontSize: 24.0
  );

  static TextStyle textField = new TextStyle(
    color: Palette.beautifulGray,
    fontSize: 16.0
  );
}