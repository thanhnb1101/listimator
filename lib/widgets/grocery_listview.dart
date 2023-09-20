import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/custom_button.dart';
import 'package:listimator/widgets/custom_elevated_button.dart';
import 'dart:developer' as dev;

import 'package:listimator/widgets/grocery_item.dart';

// ignore_for_file: must_be_immutable
class GroceryListView extends StatefulWidget {
  const GroceryListView({Key? key})
      : super(
          key: key,
        );

  @override
  GroceryListViewState createState() => GroceryListViewState();
}

class GroceryListViewState extends State<GroceryListView>
    with AutomaticKeepAliveClientMixin<GroceryListView> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    GroceryItemView chips = GroceryItemView(
        itemName: "Chips", itemValue: "Rs 200", valueCheck: false);
    GroceryItemView salt = GroceryItemView(
        itemName: "Salts", itemValue: "Rs 90", valueCheck: true);
        GroceryItemView salt2 = GroceryItemView(
        itemName: "Salts2", itemValue: "Rs 902", valueCheck: true);

    final List<GroceryItemView> items = [chips, salt, salt2];

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: items[index],
        );
      },
    );
  }
}
