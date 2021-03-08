import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:por1/utils/colors.dart';

class CustomButton extends StatelessWidget {
  String title;
  Function onPressed;
  CustomButton({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 75,
      height: MediaQuery.of(context).size.height - 670,
      child: RaisedButton(
        color: maincolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onPressed,
        child: Text(
          this.title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
