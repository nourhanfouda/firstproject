import 'package:flutter/material.dart';
import 'package:por1/model/categories_model.dart';
import 'package:por1/repositories/data_repo.dart';
import 'package:por1/screens/3categories.dart';
import 'package:por1/screens/8productdetails.dart';
import 'package:por1/utils/colors.dart';

class ProductWidget extends StatelessWidget {
  Flowers flowers;
  ProductWidget(this.flowers);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      // color: Colors.purpleAccent.withOpacity(0.3),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
      decoration: BoxDecoration(
          color: maincolor.withOpacity(0.3),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3,
              spreadRadius: 5,
              offset: Offset(0, 0.7),
            )
          ],
          borderRadius: BorderRadius.circular(30)),
      //margin: EdgeInsets.symmetric(vertical: 10),

      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(flowers.imageurl), fit: BoxFit.cover)),
              width: 200,
              height: 135,
            ),
            Text(
              flowers.flowername,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(flowers.flowerprice,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Productdetsils();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
