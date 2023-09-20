import 'package:flutter/material.dart';
import 'package:listimator/core/app_export.dart';
import 'package:listimator/widgets/custom_checkbox_button.dart';
import 'package:listimator/widgets/grocery_item.dart';
import 'package:listimator/widgets/grocery_listview.dart';

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
  bool chipsvalue = true;

  bool chocolatesvalue = false;

  bool coffeevalue = false;

  bool biscuitsvalue = false;

  bool saltvalue = false;
  GroceryItemView chips = GroceryItemView(itemName: "Chips", itemValue: "Rs 200", valueCheck: false);
  GroceryItemView salt = GroceryItemView(itemName: "Salts", itemValue: "Rs 90", valueCheck: true);

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                        child: SizedBox(height: 200.v, child: GroceryListView()),
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
