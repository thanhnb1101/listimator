import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text("App Navigation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: theme.colorScheme.surfaceVariant,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                    "Check your app's UI from the below demo screens of your app.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray40001,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: theme.colorScheme.surfaceVariant)
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapListimator(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Listimator",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .surfaceVariant,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40001)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapGroceryCheckedTabContainer(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "GroceryChecked - Tab Container",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .surfaceVariant,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40001)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapAddItems(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("AddItems",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .surfaceVariant,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40001)
                                        ])))
                              ]))))
                ]))));
  }

  /// Navigates to the listimatorScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listimatorScreen.
  onTapListimator(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listimatorScreen);
  }

  /// Navigates to the grocerycheckedTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the grocerycheckedTabContainerScreen.
  onTapGroceryCheckedTabContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.grocerycheckedTabContainerScreen);
  }

  /// Navigates to the additemsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the additemsScreen.
  onTapAddItems(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.additemsScreen);
  }
}
