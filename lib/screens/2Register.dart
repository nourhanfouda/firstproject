import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'package:por1/screens/3categories.dart';
import 'package:por1/screens/5storeregisterform.dart';
import 'package:por1/screens/6CustomerRegisterform.dart';
import 'package:por1/screens/7product.dart';
import 'package:por1/screens/login.dart';
import 'package:por1/screens/register.dart';
import 'package:por1/widgets/customButton.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //  ScreenUtil.init(
    //  context,
    // width: 411.42857142857144,
    //  height: 731.4285714285714,
    // allowFontScaling: true,
    //);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 290,
                decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.jpg'),
                        fit: BoxFit.contain)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  title: translator.translate('register_appbar'),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return RRgister();
                    }));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  title: translator.translate('login'),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
