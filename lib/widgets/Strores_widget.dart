import 'package:flutter/material.dart';
import 'package:por1/model/stores_model.dart';
import 'package:por1/screens/3categories.dart';

class Storeswidget extends StatelessWidget {
  Storesmodel storesmodel;
  Storeswidget(this.storesmodel);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.purpleAccent.withOpacity(0.3),
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
                    image: AssetImage(storesmodel.storeurl),
                    fit: BoxFit.cover)),
            width: 110,
            height: 100,
          ),
          Expanded(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  storesmodel.storename,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(storesmodel.storeaddress,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Categories();
              }));
            },
          ),
        ],
      ),
    );
  }
}
