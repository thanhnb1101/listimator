import 'package:flutter/material.dart';
import 'package:listimator/presentation/listimator_screen/listimator_screen.dart';
import 'package:listimator/presentation/grocerychecked_tab_container_screen/grocerychecked_tab_container_screen.dart';
import 'package:listimator/presentation/additems_screen/additems_screen.dart';
import 'package:listimator/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String listimatorScreen = '/listimator_screen';

  static const String grocerycheckedPage = '/grocerychecked_page';

  static const String grocerycheckedTabContainerScreen =
      '/grocerychecked_tab_container_screen';

  static const String additemsScreen = '/additems_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    listimatorScreen: (context) => ListimatorScreen(),
    grocerycheckedTabContainerScreen: (context) =>
        GrocerycheckedTabContainerScreen(),
    additemsScreen: (context) => AdditemsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
