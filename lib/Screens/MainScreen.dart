import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static String id = 'MainScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amberAccent,
      child: Text('Welcome to main Screen'),
    );
  }
}
