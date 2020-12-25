import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/model/categories_model.dart';
import 'package:por1/repositories/data_repo.dart';
import 'package:por1/widgets/Mydrawer.dart';
import 'package:por1/widgets/deatails_widget.dart';
import 'package:por1/widgets/myappbar.dart';

import '7product.dart';

class Productdetsils extends StatefulWidget {
  @override
  _ProductdetsilsState createState() => _ProductdetsilsState();
}

class _ProductdetsilsState extends State<Productdetsils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: "detsils_appbar",
        ),
        endDrawer: Mydrawer(),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/categories/daisy.jpg'),
                        fit: BoxFit.cover)),
                width: 110,
                height: 100,
              ),
              Text(
                'Daisy',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Text(
                'Daisy, any of several species of garden plants belonging to the family Asteraceae (also called Compositae) ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
