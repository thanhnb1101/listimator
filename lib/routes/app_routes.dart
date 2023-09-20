import 'package:flutter/material.dart';
import 'package:listimator/presentation/listimator_screen/listimator_screen.dart';
import 'package:listimator/presentation/grocerytab_screen/grocerytab_screen.dart';
import 'package:listimator/presentation/additem_screen/additem_screen.dart';
import 'package:listimator/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String listimatorScreen = '/listimator_screen';

  static const String grocerycheckedPage = '/grocerychecked_page';

  static const String grocerytabScreen = '/grocerytab_screen';

  static const String additemScreen = '/additem_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    listimatorScreen: (context) => ListimatorScreen(),
    grocerytabScreen: (context) => GrocerytabScreen(),
    additemScreen: (context) => AdditemScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
