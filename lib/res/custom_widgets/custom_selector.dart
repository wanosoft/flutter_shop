import 'package:flutter/material.dart';
import 'package:shopping_app/res/strings.dart';

class CustomSelector extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  CustomSelector(this.icon, this.text, this.isSelected);

  _CustomSelectorState createState() => _CustomSelectorState();
}

class _CustomSelectorState extends State<CustomSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected ? BoxDecoration(
        color: Colors.white.withAlpha(30),
        borderRadius: BorderRadius.circular(30.0)
      ) : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Icon(widget.icon, color: Colors.white),
          SizedBox(width: 8.0),
          Text(widget.text, style: AppTextStyles.selectedDropDownTextStyle)
        ]
      )
    );
  }
}