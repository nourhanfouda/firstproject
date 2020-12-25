import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/screens/2Register.dart';
import 'package:por1/widgets/myappbar.dart';

import '4Stores.dart';

class CustomerRegister extends StatelessWidget {
  var customerkey = GlobalKey<FormState>();
  String userName;
  String email;
  String password;
  String phone;
  savecustomerform() {
    bool validateresult = customerkey.currentState.validate();
    if (validateresult) {
      //customerkey.currentState.validate();
      return true;
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "register_appbar",
      ),
      endDrawer: MyAppBar(),
      body: Center(
        child: ListView(scrollDirection: Axis.vertical, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
            child: Form(
              key: customerkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.userName = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("customer_Username"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.password = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.email = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.phone = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Mobile"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 200,
                    child: RaisedButton(
                        color: Colors.purpleAccent[100].withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          translator.translate("Sub_BTn"),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (savecustomerform()) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Stores();
                            }));
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
