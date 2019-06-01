import 'package:flutter/material.dart';
import 'package:shopping_app/res/custom_widgets.dart';
import 'package:shopping_app/res/palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopHomeScreen()
        ],
      ),
    );
  }
}

class TopHomeScreen extends StatefulWidget {
  TopHomeScreen({Key key}) : super(key: key);

  _TopHomeScreenState createState() => _TopHomeScreenState();
}

class _TopHomeScreenState extends State<TopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(height: 400.0,color: Palette.juicyOrange,), 
        )
      ],
    );
  }
}