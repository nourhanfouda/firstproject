import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/repositories/storesrepo.dart';
import 'package:por1/widgets/Mydrawer.dart';
import 'package:por1/widgets/Strores_widget.dart';
import 'package:por1/widgets/myappbar.dart';

class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: "Stors_appbar",
      ),
      drawer: Mydrawer(),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 200,
              height: 65,
              padding: EdgeInsets.all(20),
              child: Text(
                translator.translate("Cate_avilable"),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height,
              child: Expanded(
                  child: ListView.builder(
                      itemCount: storesmodel.length,
                      itemBuilder: (context, index) {
                        return Storeswidget(storesmodel[index]);
                      })),
            )
          ],
        ),
      ),
    );
  }
}
