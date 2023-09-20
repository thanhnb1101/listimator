import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/custom_checkbox_button.dart';

class GroceryItemView extends StatelessWidget {
  bool valueCheck;
  String itemName;
  String itemValue;

  GroceryItemView({required this.itemName, required this.itemValue,required this.valueCheck});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        top: 15.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCheckboxButton(
            text: this.itemName,
            value: valueCheck,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              valueCheck = value;
            },
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              itemValue,
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
    );
  }
}
