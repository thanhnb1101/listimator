import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/app_bar/appbar_image.dart';
import 'package:listimator/widgets/app_bar/appbar_title.dart';
import 'package:listimator/widgets/app_bar/custom_app_bar.dart';
import 'package:listimator/widgets/custom_elevated_button.dart';

class AdditemsScreen extends StatelessWidget {
  const AdditemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 38.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarTitle(
                    text: "Back", margin: EdgeInsets.only(left: 6.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 39.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(),
                  Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.outlineOnPrimaryContainer
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add Items",
                                style: theme.textTheme.titleMedium),
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.h, 12.v, 2.h, 7.v),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.h),
                                          decoration:
                                              AppDecoration.outlineBlueGray,
                                          child: Text("Item",
                                              style: CustomTextStyles
                                                  .bodyLargeBluegray400)),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.h),
                                          decoration:
                                              AppDecoration.outlineBlueGray,
                                          child: Text("Value",
                                              style: CustomTextStyles
                                                  .bodyLargeBluegray400))
                                    ]))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 19.h, top: 48.v, right: 19.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 9.v),
                                child: Text("1",
                                    style: theme.textTheme.headlineLarge)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 9.v),
                                child: Text("2",
                                    style: theme.textTheme.headlineLarge)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 9.v),
                                child: Text("3",
                                    style: theme.textTheme.headlineLarge)),
                            Padding(
                                padding: EdgeInsets.only(top: 9.v),
                                child: Text(".",
                                    style: theme.textTheme.headlineLarge))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 19.h, top: 29.v, right: 19.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 12.v),
                                child: Text("4",
                                    style: theme.textTheme.headlineLarge)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 11.v),
                                child: Text("5",
                                    style: theme.textTheme.headlineLarge)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 12.v),
                                child: Text("6",
                                    style: theme.textTheme.headlineLarge)),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: Text(",",
                                    style: theme.textTheme.headlineLarge))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 19.h, top: 26.v, right: 19.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("7", style: theme.textTheme.headlineLarge),
                            Text("8", style: theme.textTheme.headlineLarge),
                            Text("9", style: theme.textTheme.headlineLarge),
                            Text("0", style: theme.textTheme.headlineLarge)
                          ]))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Done",
                margin:
                    EdgeInsets.only(left: 45.h, right: 43.h, bottom: 49.v))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
