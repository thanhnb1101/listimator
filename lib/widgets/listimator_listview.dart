import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/core/utils/share_preference.dart';
import 'package:listimator/widgets/custom_button.dart';
import 'package:listimator/widgets/custom_elevated_button.dart';
import 'dart:developer' as dev;

import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class ListimatorListView extends StatefulWidget {
  const ListimatorListView({Key? key})
      : super(
          key: key,
        );

  @override
  ListimatorListViewState createState() => ListimatorListViewState();
}

class ListimatorListViewState extends State<ListimatorListView>
    with AutomaticKeepAliveClientMixin<ListimatorListView> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    CustomButton groceryItems = CustomButton(
        buttonText: "Grocery",
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.grocerytabScreen);
        });
    CustomButton furnitureItems = CustomButton(
        buttonText: "Furniture",
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.grocerytabScreen);
        });

    final List<CustomButton> items = [groceryItems, furnitureItems];

    return Container(
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
          SizedBox(
            height: 200.v,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: items[index],
                );
              },
            ),
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            height: 47.v,
            text: "+",
            buttonStyle: CustomButtonStyles.none,
            buttonTextStyle: theme.textTheme.displaySmall!,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.additemScreen);
            },
          ),
        ],
      ),
    );
  }

  

}
