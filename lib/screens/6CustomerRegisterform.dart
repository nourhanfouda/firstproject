import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:por1/widgets/CustomTextField.dart';
import 'package:por1/widgets/customButton.dart';
import 'package:string_validator/string_validator.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
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
      // endDrawer: MyAppBar(),
      body: Center(
        child: ListView(scrollDirection: Axis.vertical, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Form(
              key: customerkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.userName = newValue;
                    },
                    labelName: translator.translate("customer_Username"),
                    icon: Icon(Icons.person),
                    secure: false,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else if (Value.length < 6) {
                        return 'The password must be more than 6 charachter';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.password = newValue;
                    },
                    labelName: translator.translate("Password"),
                    icon: Icon(Icons.visibility),
                    secure: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else if (!isEmail(Value)) {
                        return 'incorrect email pattern ';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.email = newValue;
                    },
                    labelName: translator.translate("Email"),
                    icon: Icon(Icons.email),
                    secure: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.phone = newValue;
                    },
                    labelName: translator.translate("Mobile"),
                    icon: Icon(Icons.phone_android),
                    secure: false,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      title: translator.translate("Sub_BTn"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Stores();
                        }));
                        // if (savecustomerform()) {
                        //   Navigator.of(context)
                        //       .push(MaterialPageRoute(builder: (context) {
                        //     return Stores();
                        //   }));
                        // }
                      }),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
