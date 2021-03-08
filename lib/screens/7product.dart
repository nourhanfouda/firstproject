import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/repositories/data_repo.dart';
import 'package:por1/widgets/Mydrawer.dart';
import 'package:por1/widgets/categories_widget.dart';
import 'package:por1/widgets/myappbar.dart';
import 'package:por1/widgets/product_widget.dart';

import '4Stores.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: MyAppBar(
          title: "product_appbar",
        ),
        endDrawer: Mydrawer(),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: size.height,
                child: ListView.builder(
                    itemCount: flowers.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(flowers[index]);
                    }),
              )
            ],
          ),
        ));
  }
}
