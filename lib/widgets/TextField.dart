import 'package:flutter/material.dart';
import 'package:services/constant.dart';

class Textfield extends StatelessWidget {
  Textfield({
    @required this.hint,
    @required this.label,
  });
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kDarkGreyColor),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          labelText: label,
          labelStyle: TextStyle(color: kItemColor),
        ),
      ),
    );
  }
}
