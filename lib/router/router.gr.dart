// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:por1/screens/1Seplash.dart';
import 'package:por1/screens/2Register.dart';
import 'package:por1/screens/3categories.dart';
import 'package:por1/screens/4Stores.dart';

class Routes {
  static const String page1Route = '/';
  static const String page2Route = '/Page2';
  static const String page3Route = '/Page3';
  static const all = <String>{
    page1Route,
    page2Route,
    page3Route,
  };
}

class CustomRouters extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.page1Route, page: Splash),
    RouteDef(Routes.page2Route, page: Register),
    RouteDef(Routes.page3Route, page: Categories),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Splash: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Splash(),
        settings: data,
      );
    },
    Register: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Register(),
        settings: data,
      );
    },
    Categories: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Categories(),
        settings: data,
      );
    },
    Stores: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Stores(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension CustomRoutersExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushPage1Route() => push<dynamic>(Routes.page1Route);

  Future<dynamic> pushPage2Route(
          {int age, String name, OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.page2Route,
        arguments: Page2Arguments(age: age, name: name),
        onReject: onReject,
      );

  Future<dynamic> pushPage3Route({
    @required String name,
    @required String address,
    @required int age,
  }) =>
      push<dynamic>(
        Routes.page3Route,
        arguments: Page3Arguments(name: name, address: address, age: age),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// Page2 arguments holder class
class Page2Arguments {
  final int age;
  final String name;
  Page2Arguments({this.age, this.name});
}

/// Page3 arguments holder class
class Page3Arguments {
  final String name;
  final String address;
  final int age;
  Page3Arguments(
      {@required this.name, @required this.address, @required this.age});
}
