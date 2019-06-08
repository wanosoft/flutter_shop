import 'package:flutter/material.dart';
import 'package:shopping_app/res/palette.dart';
import 'views/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: theme
    );
  }
}

ThemeData theme = new ThemeData(
  primaryColor: Palette.themeColor,
  fontFamily: 'Oxygen'
);