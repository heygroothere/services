import 'package:flutter/material.dart';
import 'package:services/constant.dart';
import 'package:services/widgets/AccountText.dart';

class Bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Choose your Services Account!',
            style: TextStyle(color: kDarkGreyColor),
          ),
          AccountText(text: 'Customer Account'),
          Text(
            'OR',
            style: TextStyle(color: kDarkGreyColor),
          ),
          AccountText(text: 'Seller Account')
        ],
      ),
    );
  }
}
