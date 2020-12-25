import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/screens/2Register.dart';
import 'package:por1/screens/7product.dart';
import 'package:por1/widgets/Mydrawer.dart';
import 'package:por1/widgets/myappbar.dart';

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
      endDrawer: MyAppBar(),
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
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Sore_Name"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty)
                        return 'required';
                      else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
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
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Mobile"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (Value) {
                      if (Value.isEmpty) {
                        return '*Required';
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      this.storeName = newValue;
                    },
                    decoration: InputDecoration(
                        labelText: translator.translate("Description"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
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
                          if (savestoreform()) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Product();
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
