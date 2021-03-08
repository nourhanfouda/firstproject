import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  Function saveFun;
  Function validateFun;
  String labelName;
  Widget icon;
  int maxlines;
  TextInputType keyboardType;
  bool secure = false;
  Function validator;
  Function onSaved;
  CustomTextField(
      {this.labelName,
      this.saveFun,
      this.validateFun,
      this.icon,
      this.keyboardType,
      this.secure,
      this.maxlines,
      this.validator,
      this.onSaved});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        onSaved: (valu) {
          this.saveFun(valu);
        },
        // ignore: missing_return
        validator: (value) {
          this.validateFun(value);
        },
        maxLines: maxlines,
        keyboardType: keyboardType,
        // obscureText: secure,
        decoration: InputDecoration(
          //   labelStyle: TextStyle(color: mainwhite),
          labelText: this.labelName,
          contentPadding: EdgeInsets.all(20),
          prefixIcon: icon,
          filled: true,
          // fillColor: mainwhite.withOpacity(0.09),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
