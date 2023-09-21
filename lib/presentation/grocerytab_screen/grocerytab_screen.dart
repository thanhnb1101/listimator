import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/presentation/grocerychecked_page/grocerychecked_page.dart';
import 'package:listimator/widgets/app_bar/appbar_image.dart';
import 'package:listimator/widgets/app_bar/appbar_title.dart';
import 'package:listimator/widgets/app_bar/custom_app_bar.dart';

class GrocerytabScreen extends StatefulWidget {
  const GrocerytabScreen({Key? key}) : super(key: key);

  @override
  GrocerytabScreenState createState() => GrocerytabScreenState();
}

// ignore_for_file: must_be_immutable
class GrocerytabScreenState extends State<GrocerytabScreen>
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.h, top: 11.v, right: 20.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 7.v, bottom: 2.v),
                                        child: Text("Grocery",
                                            style:
                                                theme.textTheme.headlineSmall)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgPlusPrimary,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        onTap: () {
                                           Navigator.pushNamed(context, AppRoutes.additemScreen);
                                        },
                                        )
                                  ]))),
                      Container(
                          height: 33.v,
                          width: 237.h,
                          margin: EdgeInsets.only(left: 30.h, top: 26.v),
                          child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: theme.colorScheme.secondaryContainer,
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
                                Tab(child: Text("Unchecked")),
                                Tab(child: Text("Checked"))
                              ])),
                      SizedBox(
                          height: 631.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                GrocerycheckedPage(),
                                GrocerycheckedPage()
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
