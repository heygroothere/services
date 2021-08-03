import 'package:flutter/material.dart';
import 'package:services/constant.dart';

class Button extends StatelessWidget {
  const Button(
      {this.animation,
      @required this.width,
      @required this.height,
      @required this.fontSize,
      @required this.navigator,
      @required this.color,
      @required this.text,
      this.topMargin});

  final Animation animation;
  final double width;
  final double height;
  final double fontSize;
  final Function navigator;
  final Color color;
  final String text;
  final double topMargin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigator,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        margin: topMargin != null
            ? EdgeInsets.only(top: topMargin)
            : EdgeInsets.only(top: 0),
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(
                color: kItemColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize)),
      ),
    );
  }
}
