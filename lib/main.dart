import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:por1/screens/1Seplash.dart';
import 'package:por1/screens/4Stores.dart';
import 'package:por1/screens/7product.dart';
import 'package:por1/widgets/product_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );

  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(
    //  context,
    //  width: 411.42857142857144,
    //  height: 731.4285714285714,
    //  allowFontScaling: true,
    //  );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market',
      home: Splash(),
      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.locale, // Active locale
      supportedLocales: translator.locals(),
    );
  }
}
