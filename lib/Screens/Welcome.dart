import 'package:flutter/material.dart';
import 'package:services/constant.dart';
import 'package:services/widgets/BottomSheet.dart';
import 'package:services/widgets/Button.dart';

class Welcome extends StatefulWidget {
  static String id = 'Welcome';

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    controller.forward();
    controller.addListener(() {
      setState(() {});
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
      builder: (BuildContext context) => Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: kLightGreyColor,
          ),
          Container(
            height: 300,
            child: Image(
              image: AssetImage('images/plumber.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: controller.value * 120, right: 10),
                    decoration: BoxDecoration(
                      color: kLightGreyColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Text(
                      '𝕊𝔼ℝ𝕍𝕀ℂ𝔼𝕊 𝕐𝕆𝕌',
                      style: TextStyle(
                        color: kItemColor,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(
                          right: controller.value * 160, left: 10),
                      decoration: BoxDecoration(
                        color: kLightGreyColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                      ),
                      child: Text(
                        'ℕ𝔼𝔼𝔻',
                        style: TextStyle(color: kItemColor, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              )),
          Button(
              animation: animation,
              height: animation.value * 50,
              width: animation.value * 150,
              fontSize: animation.value * 18,
              color: kLightGreyColor,
              text: 'Get Started',
              navigator: () => sheet()),
        ],
      ),
    );
  }
}
