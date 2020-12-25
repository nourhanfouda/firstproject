import 'package:auto_route/auto_route_annotations.dart';
import 'package:por1/screens/1Seplash.dart';
import 'package:por1/screens/2Register.dart';
import 'package:por1/screens/3categories.dart';
import 'package:por1/screens/4Stores.dart';
import 'package:por1/screens/5storeregisterform.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: Splash, initial: true, name: 'SplahRoute'),
    MaterialRoute(page: Register, name: 'RegisterRoute'),
    MaterialRoute(page: Categories, name: 'CategoriesRoute'),
    MaterialRoute(page: Stores, name: 'StoresRoute'),
    MaterialRoute(page: StoreRegister, name: 'StoresRegisterRoute'),
  ],
)
class $CustomRouters {}
