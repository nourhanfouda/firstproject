import 'package:flutter/cupertino.dart';
import 'package:por1/model/categories_model.dart';

class Deatailwidget extends StatelessWidget {
  Flowers flowers;
  Deatailwidget(this.flowers);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(flowers.imageurl), fit: BoxFit.cover)),
            width: 110,
            height: 100,
          ),
          Text(
            flowers.flowername,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            flowers.flowerdatails,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
