import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/screens/2Register.dart';
import 'package:por1/screens/7product.dart';
import 'package:por1/widgets/CustomTextField.dart';
import 'package:por1/widgets/Mydrawer.dart';
import 'package:por1/widgets/customButton.dart';
import 'package:por1/widgets/myappbar.dart';
import 'package:string_validator/string_validator.dart';

class StoreRegister extends StatelessWidget {
  var storekey = GlobalKey<FormState>();
  String storeName;
  savestoreform() {
    bool validateresult = storekey.currentState.validate();
    if (validateresult) {
      // navigator
      return true;
    } else {
      return;
    }
  }

  String validateName(String value) {
    if (value == null) {
      return ' required';
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
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Form(
              key: storekey,
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
                      this.storeName = newValue;
                    },
                    labelName: translator.translate("Sore_Name"),
                    icon: Icon(Icons.store),
                    secure: false,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return 'required';
                      } else if (Value.length < 6) {
                        return 'The password must be more than 6 charachter';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    labelName: translator.translate("Password"),
                    icon: Icon(Icons.visibility),
                    secure: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 15,
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
                      this.storeName = newValue;
                    },
                    labelName: translator.translate("Email"),
                    icon: Icon(Icons.email),
                    secure: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Container(
                    //  margin: EdgeInsets.all(20),

                    //margin: EdgeInsets.symmetric(vertical: 10),
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            // padding: EdgeInsets.all(20),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/location.jpg'),
                                    fit: BoxFit.cover))),
                        Text(
                          translator.translate("Location"),
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    labelName: translator.translate("Mobile"),
                    icon: Icon(Icons.phone_android_outlined),
                    secure: false,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    labelName: translator.translate("Description"),
                    icon: Icon(Icons.description),
                    secure: false,
                    keyboardType: TextInputType.name,
                  ),
                  CustomButton(
                      title: translator.translate("Sub_BTn"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Product();
                        }));
                        // if (savestoreform()) {
                        //   Navigator.of(context)
                        //       .push(MaterialPageRoute(builder: (context) {
                        //     return Product();
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
