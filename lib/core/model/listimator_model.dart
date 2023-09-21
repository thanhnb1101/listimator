import 'package:listimator/core/model/grocery_model.dart';
class ListimatorModel {
   String? id;
   String? name;
   List<GroceryModel>? listGrocery;
   bool isBuy;
  
  ListimatorModel({this.id, this.name, this.listGrocery, this.isBuy = true});

  factory ListimatorModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> listGroceryJSONStringList = json['listGrocery'];
    List<GroceryModel> list = [];
    for (var item in listGroceryJSONStringList) {
      GroceryModel obj = GroceryModel.fromJson(item);
      list.add(obj);
    }
    return ListimatorModel(
      id: json['id'],
      name: json['name'],
      listGrocery: list,
      isBuy: json['isBuy'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'listGrocery': listGrocery,
      'isBuy': isBuy,
    };
  }
}