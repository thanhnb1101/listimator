import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/custom_elevated_button.dart';
import 'package:listimator/widgets/custom_outlined_button.dart';

class ListimatorScreen extends StatelessWidget {
  const ListimatorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 44.v,
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
                        "Avoid losing your money on unplanned\nitems.\nCreate a list before you buy or sell things on hold on to your hand earned money",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
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
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 118.h,
                          child: Divider(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.h,
                        bottom: 11.v,
                      ),
                      child: Text(
                        "Sell List",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgInfo,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        bottom: 11.v,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 11.v),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30.v,
                  right: 7.h,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 23.v,
                ),
                decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomOutlinedButton(
                      text: "Grocery",
                    ),
                    SizedBox(height: 26.v),
                    CustomOutlinedButton(
                      text: "Furniture",
                    ),
                    SizedBox(height: 26.v),
                    CustomElevatedButton(
                      height: 47.v,
                      text: "+",
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.displaySmall!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
