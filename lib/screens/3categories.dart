import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/repositories/data_repo.dart';
import 'package:por1/screens/4Stores.dart';
import 'package:por1/widgets/Mydrawer.dart';
import 'package:por1/widgets/categories_widget.dart';
import 'package:por1/widgets/myappbar.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ScreenUtil.init(
    //   context,
    //  width: 411.42857142857144,
    //  height: 731.4285714285714,
    //  allowFontScaling: true,
    //  );

    return Scaffold(
      appBar: MyAppBar(
        title: 'Cate_avilable',
      ),
      endDrawer: Mydrawer(),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Carousel(
                images: [
                  AssetImage('assets/images/carosuel/flower1.jpg'),
                  AssetImage('assets/images/carosuel/flower2.jpg'),
                  AssetImage('assets/images/carosuel/flower3.jpg'),
                  AssetImage('assets/images/carosuel/flower4.jpg'),
                ],
                dotSize: 5,
                dotIncreaseSize: 2,
                dotBgColor: Colors.purpleAccent[100].withOpacity(0.2),
                showIndicator: true,
                boxFit: BoxFit.cover,
              ),
            ),
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
                      itemCount: flowers.length,
                      itemBuilder: (context, index) {
                        return Categorieswidgit(flowers[index]);
                      })),
            )
          ],
        ),
      ),
    );
  }
}
