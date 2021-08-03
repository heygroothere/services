import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:services/Screens/MainScreen.dart';
import 'package:services/Screens/SignUp.dart';
import 'package:services/constant.dart';
import 'package:services/widgets/Button.dart';
import 'package:services/widgets/TextField.dart';
import 'package:services/widgets/ForgotPassBottomSheet.dart';

class LogIn extends StatefulWidget {
  static String id = 'LogIn';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    controller.forward();
    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future sheet() {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      backgroundColor: kLightGreyColor,
      builder: (BuildContext context) => ForgotPassBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        backgroundColor: kGreyColor,
      ),
      backgroundColor: kLightGreyColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: kLightGreyColor,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(80))),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(80)),
                child: Image(
                  image: AssetImage('images/login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Text(
                'Log In! if you already have an Account.',
                style: TextStyle(color: kDarkGreyColor),
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Textfield(
                        hint: 'Enter your Phone Number',
                        label: 'Phone',
                      ),
                      Textfield(
                        hint: 'Enter your Password',
                        label: 'Password',
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        height: animation.value * 50,
                        width: animation.value * 150,
                        child: Button(
                          height: 50,
                          width: 150,
                          fontSize: 18,
                          color: kGreyColor,
                          text: 'Log In',
                          navigator: () {
                            Navigator.pushNamed(context, MainScreen.id);
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                sheet();
                              },
                              child: Text('Forgot Password?',
                                  style: TextStyle(
                                    color: kItemColor,
                                    fontSize: 16,
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignUp.id);
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 8),
                                child: Text(
                                  'Sign Up?',
                                  style: TextStyle(
                                      color: kItemColor, fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
