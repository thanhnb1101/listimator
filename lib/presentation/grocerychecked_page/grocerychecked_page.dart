import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/custom_checkbox_button.dart';

// ignore_for_file: must_be_immutable
class GrocerycheckedPage extends StatefulWidget {
  const GrocerycheckedPage({Key? key})
      : super(
          key: key,
        );

  @override
  GrocerycheckedPageState createState() => GrocerycheckedPageState();
}

class GrocerycheckedPageState extends State<GrocerycheckedPage>
    with AutomaticKeepAliveClientMixin<GrocerycheckedPage> {
  bool chipsvalue = false;

  bool chocolatesvalue = false;

  bool coffeevalue = false;

  bool biscuitsvalue = false;

  bool saltvalue = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 31.v,
                    right: 20.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 20.v,
                        ),
                        decoration:
                            AppDecoration.outlineOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomCheckboxButton(
                                    text: "Chips",
                                    value: chipsvalue,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      chipsvalue = value;
                                    },
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "Rs 200",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgOverflowmenu,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 20.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomCheckboxButton(
                                    text: "Chocolates",
                                    value: chocolatesvalue,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      chocolatesvalue = value;
                                    },
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "Rs 100",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgOverflowmenu,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 2.h),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 20.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomCheckboxButton(
                                    text: "Coffee",
                                    value: coffeevalue,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.v),
                                    onChange: (value) {
                                      coffeevalue = value;
                                    },
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "Rs 20",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgOverflowmenu,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 20.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomCheckboxButton(
                                    text: "Biscuits",
                                    value: biscuitsvalue,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      biscuitsvalue = value;
                                    },
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "Rs 250",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgOverflowmenu,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 20.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomCheckboxButton(
                                    text: "Salt",
                                    value: saltvalue,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      saltvalue = value;
                                    },
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "Rs 90",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgOverflowmenu,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 36.v,
                          right: 41.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Estimated",
                              style: CustomTextStyles.titleMedium16,
                            ),
                            Text(
                              "Rs 1462",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 25.v,
                          right: 41.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Checked",
                              style: theme.textTheme.bodyLarge,
                            ),
                            Text(
                              "Rs 660",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 25.v,
                          right: 41.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Unchecked",
                              style: theme.textTheme.bodyLarge,
                            ),
                            Text(
                              "Rs 808",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
