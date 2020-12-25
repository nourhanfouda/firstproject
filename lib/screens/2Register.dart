import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'package:por1/screens/3categories.dart';
import 'package:por1/screens/5storeregisterform.dart';
import 'package:por1/screens/6CustomerRegisterform.dart';
import 'package:por1/screens/7product.dart';

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
        appBar: CupertinoNavigationBar(
          trailing: IconButton(
              icon: Icon(Icons.language),
              onPressed: () {
                translator.setNewLanguage(
                  context,
                  newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                  remember: true,
                  restart: true,
                );
              }),
          backgroundColor: Colors.purpleAccent[100],
          middle: Text(
            translator.translate('register_appbar'),
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: 300,
                decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/carosuel/flower4.jpg'),
                        fit: BoxFit.cover)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: RaisedButton(
                        color: Colors.purpleAccent[100].withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return StoreRegister();
                          }));
                        },
                        child: Text(
                          translator.translate("store_register"),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    child: RaisedButton(
                        color: Colors.purpleAccent[100].withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return CustomerRegister();
                          }));
                        },
                        child: Text(
                          translator.translate("customer_register"),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    child: RaisedButton(
                        color: Colors.purpleAccent[100].withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Product();
                          }));
                        },
                        child: Text(
                          translator.translate("skip"),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
