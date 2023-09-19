import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/app_bar/appbar_image.dart';
import 'package:listimator/widgets/app_bar/appbar_title.dart';
import 'package:listimator/widgets/app_bar/custom_app_bar.dart';

class GroceryuncheckedScreen extends StatelessWidget {
  const GroceryuncheckedScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 7.v, bottom: 2.v),
                                    child: Text("Grocery",
                                        style: theme.textTheme.headlineSmall)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlusPrimary,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize)
                              ])),
                      SizedBox(height: 26.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Column(children: [
                                  Text("Unchecked",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 8.v),
                                  SizedBox(width: 118.h, child: Divider())
                                ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, bottom: 12.v),
                                child: Text("Checked",
                                    style: theme.textTheme.titleMedium))
                          ]),
                      Container(
                          margin: EdgeInsets.only(top: 30.v, right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 20.v),
                          decoration: AppDecoration.outlineOnPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckboxoutlineblank,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 2.v),
                                          child: Text("Rice",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Rs 500",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgOverflowmenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 20.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckboxoutlineblank,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 2.v),
                                          child: Text("Wheat",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Rs 200",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgOverflowmenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 20.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckboxoutlineblank,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 3.v),
                                          child: Text("Sugar",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Rs 50",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgOverflowmenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 20.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckboxoutlineblank,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 2.v),
                                          child: Text("Salt",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Rs 29",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgOverflowmenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 20.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckboxoutlineblank,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 2.v),
                                          child: Text("Salt",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Rs 29",
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgOverflowmenu,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)
                                    ]))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 20.h, top: 36.v, right: 42.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Estimated",
                                    style: CustomTextStyles.titleMedium16),
                                Text("Rs 1462",
                                    style: theme.textTheme.bodyLarge)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 20.h, top: 25.v, right: 42.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Checked",
                                    style: theme.textTheme.bodyLarge),
                                Text("Rs 660", style: theme.textTheme.bodyLarge)
                              ])),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20.h, 25.v, 42.h, 5.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Unchecked",
                                    style: theme.textTheme.bodyLarge),
                                Text("Rs 808", style: theme.textTheme.bodyLarge)
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
