import 'dart:convert';

import 'package:listimator/core/model/grocery_model.dart';
import 'package:listimator/core/model/listimator_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomSharePreference {
  static Future<void> saveList(List<ListimatorModel> list) async {
    final prefs = await SharedPreferences.getInstance();

    // Convert each item in the list to a JSON string
    List<String> stringList =
        list.map((item) => jsonEncode(item.toJson())).toList();
    print("saveList \n");
    print(stringList);

    // Save the list of strings in SharedPreferences
    await prefs.setStringList('myList', stringList);
  }

  static Future<List<ListimatorModel>> loadList() async {
    final prefs = await SharedPreferences.getInstance();

    // Load the list of strings from SharedPreferences
    List<String> stringList = prefs.getStringList('myList') ?? [];

    // Convert each item in the list from a JSON string to a MyObject
    List<ListimatorModel> list = stringList
        .map((item) => ListimatorModel.fromJson(json.decode(item)))
        .toList();
    print("loadList \n");
    print(list.toString());
    return list;
  }

  static void initData() {
    GroceryModel chips = new GroceryModel(
        id: "1", name: "Chips", value: "RS 200", isCheck: true);
    GroceryModel rice =
        new GroceryModel(id: "2", name: "Rice", value: "RS 20", isCheck: false);
    GroceryModel salt =
        new GroceryModel(id: "3", name: "Salt", value: "RS 19", isCheck: false);

    List<GroceryModel> listGrocery1 = [chips, rice, salt];
    List<GroceryModel> listGrocery2 = [chips, rice, salt];
    ListimatorModel listimatorModel1 = new ListimatorModel(
        id: "1", name: "Grocery", listGrocery: listGrocery1, isBuy: true);
    ListimatorModel listimatorMode2 = new ListimatorModel(
        id: "1", name: "Grocery", listGrocery: listGrocery2, isBuy: true);
    List<ListimatorModel> listData = [listimatorModel1, listimatorMode2];
    saveList(listData);
    loadList();
  }
}
