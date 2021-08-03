import 'package:flutter/material.dart';
import 'package:services/Screens/LogIn.dart';
import 'package:services/Screens/MainScreen.dart';
import 'package:services/Screens/SignUp.dart';
import 'package:services/Screens/ForgotPassword.dart';
import 'package:services/Screens/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Welcome.id,
        routes: {
          Welcome.id: (context) => Welcome(),
          LogIn.id: (context) => LogIn(),
          SignUp.id: (context) => SignUp(),
          ForgotPassword.id: (context) => ForgotPassword(),
          MainScreen.id: (context) => MainScreen(),
        });
  }
}
