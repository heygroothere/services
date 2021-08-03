import 'package:flutter/material.dart';
import 'package:services/Screens/ForgotPassword.dart';
import 'package:services/constant.dart';
import 'package:services/widgets/Button.dart';
import 'package:services/widgets/TextField.dart';

class ForgotPassBottomsheet extends StatefulWidget {
  @override
  _ForgotPassBottomsheetState createState() => _ForgotPassBottomsheetState();
}

class _ForgotPassBottomsheetState extends State<ForgotPassBottomsheet> {
  bool flag = false;

  onChange() {
    setState(() {
      if (flag == false)
        flag = true;
      else
        flag = false;
    });
  }

  navigate() {
    Navigator.popAndPushNamed(context, ForgotPassword.id);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: 280,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          flag == false
              ? Containers(
                  text:
                      "Don't you Worry a bit, We'll take care of things for you!",
                  hint: 'Enter the sended OPT Password',
                  label: 'Phone',
                )
              : Containers(
                  text:
                      "If you don't receive OPT pass in 10 seconds, Just press the resend Button",
                  hint: 'Enter your Registered Phone Number',
                  label: 'OPT',
                ),
          Button(
              width: 150,
              height: 50,
              fontSize: 18,
              navigator: flag == false ? onChange : navigate,
              color: kGreyColor,
              text: flag == false ? 'Next' : 'Done')
        ],
      ),
    ));
  }
}

class Containers extends StatelessWidget {
  Containers({@required this.text, @required this.hint, @required this.label});
  final String text;
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(color: kDarkGreyColor),
          ),
          Textfield(hint: hint, label: label),
        ],
      ),
    );
  }
}
