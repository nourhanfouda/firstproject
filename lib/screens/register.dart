import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/screens/5storeregisterform.dart';
import 'package:por1/screens/6CustomerRegisterform.dart';
import 'package:por1/widgets/customButton.dart';

class RRgister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 290,
                decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.jpg'),
                        fit: BoxFit.contain)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  title: translator.translate('storeregister'),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return StoreRegister();
                    }));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  title: translator.translate('Customerregister'),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return CustomerRegister();
                    }));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
