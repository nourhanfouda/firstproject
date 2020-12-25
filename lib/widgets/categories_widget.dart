import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:por1/model/categories_model.dart';

class Categorieswidgit extends StatelessWidget {
  Flowers flowers;
  Categorieswidgit(this.flowers);

  @override
  Widget build(BuildContext context) {
    //  Size size = MediaQuery.of(context).size;
    // ScreenUtil.init(
    //  context,
    // width: 411.42857142857144,
    // height: 731.4285714285714,
    // allowFontScaling: true,
    //);
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3,
              spreadRadius: 5,
              offset: Offset(0, 0.7),
            )
          ],
          borderRadius: BorderRadius.circular(10)),
      //margin: EdgeInsets.symmetric(vertical: 10),
      height: 100,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(flowers.imageurl), fit: BoxFit.cover)),
            width: 110,
            height: 100,
          ),
          Expanded(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  flowers.flowername,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(flowers.flowerprice,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
