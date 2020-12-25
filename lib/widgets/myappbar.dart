import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;

  MyAppBar({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.purpleAccent[100],
      title: Text(
        translator.translate(title),
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
