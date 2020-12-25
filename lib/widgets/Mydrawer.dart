import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Flower',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            accountEmail: Text('flower@flower.com',
                style: TextStyle(color: Colors.black, fontSize: 20)),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.purpleAccent,
            ),
            decoration: BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                    image: AssetImage("assets/images/Stores/store1.jpg"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text(translator.translate("Messages"),
                style: TextStyle(color: Colors.black, fontSize: 20)),
            leading: Icon(Icons.message, color: Colors.purple, size: 25),
            contentPadding: EdgeInsets.all(10),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            title: Text(translator.translate("store_register"),
                style: TextStyle(color: Colors.black, fontSize: 20)),
            leading: Icon(Icons.category, color: Colors.purple, size: 25),
            contentPadding: EdgeInsets.all(10),
            dense: true,
            onTap: () {},
          ),
          Divider(color: Colors.purple, thickness: 1),
          ListTile(
            title: Text(translator.translate("settings"),
                style: TextStyle(color: Colors.black, fontSize: 20)),
            leading: Icon(Icons.settings, color: Colors.purple, size: 25),
            contentPadding: EdgeInsets.all(10),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            title: Text(translator.translate("AboutApp"),
                style: TextStyle(color: Colors.black, fontSize: 20)),
            leading: Icon(Icons.info, color: Colors.purple, size: 25),
            contentPadding: EdgeInsets.all(10),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            title: Text(translator.translate("logout"),
                style: TextStyle(color: Colors.black, fontSize: 20)),
            leading: Icon(Icons.logout, color: Colors.purple, size: 25),
            contentPadding: EdgeInsets.all(10),
            dense: true,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
