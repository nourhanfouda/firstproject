import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:por1/screens/2Register.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(
    //  context,
    //  width: 411.42857142857144,
    // height: 731.4285714285714,
    // allowFontScaling: true,
    // );
    Future.delayed(Duration(seconds: 5)).then((value) {
      Get.off(Register());
    });
    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
              child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                  fit: BoxFit.contain),
            ),
          ))),
    );
  }
}
