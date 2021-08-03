import 'package:flutter/material.dart';
import 'package:services/Screens/LogIn.dart';
import 'package:services/constant.dart';

class AccountText extends StatelessWidget {
  AccountText({
    @required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, LogIn.id);
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: kDarkGreyColor),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
