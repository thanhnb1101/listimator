import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/listimator_widget.dart';
import 'package:listimator/widgets/app_bar/appbar_image.dart';
import 'package:listimator/widgets/app_bar/appbar_image_1.dart';
import 'package:listimator/widgets/app_bar/appbar_image_2.dart';
import 'package:listimator/widgets/app_bar/custom_app_bar.dart';
import 'package:listimator/widgets/custom_elevated_button.dart';
import 'package:listimator/widgets/custom_outlined_button.dart';
import 'dart:developer' as dev;

class ListimatorScreen extends StatefulWidget {
  const ListimatorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<StatefulWidget> createState() => ListimatorScreenState();
}

class ListimatorScreenState extends State<ListimatorScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 47.v,
          leadingWidth: 58.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgImage1,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 7.v,
              bottom: 7.v,
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 38.h),
            child: Row(
              children: [
                AppbarImage1(
                  svgPath: ImageConstant.imgLocation,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 16.v,
                  ),
                ),
                AppbarImage1(
                  imagePath: ImageConstant.imgImage2,
                  margin: EdgeInsets.only(left: 37.h),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage2(
              svgPath: ImageConstant.imgNotification,
              margin: EdgeInsets.only(
                left: 28.h,
                top: 11.v,
                right: 12.h,
              ),
            ),
            AppbarImage2(
              svgPath: ImageConstant.imgOverflowmenuPrimary,
              margin: EdgeInsets.only(
                left: 44.h,
                top: 11.v,
                right: 40.h,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              Container(
                width: 328.h,
                margin: EdgeInsets.only(right: 7.h),
                padding: EdgeInsets.symmetric(vertical: 21.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 20.v),
                    Text(
                      "Listimator",
                      style: theme.textTheme.headlineSmall,
                    ),
                    Container(
                      width: 308.h,
                      margin: EdgeInsets.only(
                        top: 42.v,
                        right: 19.h,
                      ),
                      child: Text(
                        "Avoid losing your money on unplanned items.\nCreate a list before you buy or sell things on hold on to your hand earned money",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge17,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: 18.v,
                    right: 7.h,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: TabBar(
                                controller: tabviewController,
                                labelPadding: EdgeInsets.zero,
                                labelColor:
                                    theme.colorScheme.secondaryContainer,
                                labelStyle: TextStyle(
                                    fontSize: 18.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                                unselectedLabelColor:
                                    theme.colorScheme.secondaryContainer,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 18.fSize,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                                indicatorColor: theme.colorScheme.primary,
                                tabs: [
                              Tab(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text(
                                      "Buy List",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgInfo,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 5.h),
                                  ),
                                ],
                              )),
                              Tab(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text(
                                      "Sell List",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgInfo,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 5.h),
                                  ),
                                ],
                              )),
                            ])),
                        SizedBox(
                            height: 400.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  ListimatorWidget(),
                                  ListimatorWidget()
                                ]))
                      ])),
              // Padding(
              //   padding: EdgeInsets.only(
              //     top: 18.v,
              //     right: 7.h,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Column(
              //         children: [
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Padding(
              //                 padding: EdgeInsets.only(top: 1.v),
              //                 child: Text(
              //                   "Buy List",
              //                   style: theme.textTheme.titleMedium,
              //                 ),
              //               ),
              //               CustomImageView(
              //                 svgPath: ImageConstant.imgInfo,
              //                 height: 24.adaptSize,
              //                 width: 24.adaptSize,
              //                 margin: EdgeInsets.only(left: 5.h),
              //               ),
              //             ],
              //           ),
              //           SizedBox(height: 7.v),
              //           SizedBox(
              //             width: 118.h,
              //             child: Divider(),
              //           ),
              //         ],
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           left: 30.h,
              //           bottom: 11.v,
              //         ),
              //         child: Text(
              //           "Sell List",
              //           style: theme.textTheme.titleMedium,
              //         ),
              //       ),
              //       CustomImageView(
              //         svgPath: ImageConstant.imgInfo,
              //         height: 24.adaptSize,
              //         width: 24.adaptSize,
              //         margin: EdgeInsets.only(
              //           left: 7.h,
              //           bottom: 11.v,
              //         ),
              //       ),
              //       Spacer(),
              //       CustomImageView(
              //         svgPath: ImageConstant.imgPlus,
              //         height: 24.adaptSize,
              //         width: 24.adaptSize,
              //         margin: EdgeInsets.only(bottom: 11.v),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
