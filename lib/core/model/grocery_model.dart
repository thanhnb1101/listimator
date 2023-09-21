class GroceryModel {
   String? id;
   String? name;
   String? value;
   bool isCheck;
  

  GroceryModel({this.id, this.name, this.value, this.isCheck = true});

  factory GroceryModel.fromJson(Map<String, dynamic> json) {
    return GroceryModel(
      id: json['id'],
      name: json['name'],
      value: json['value'],
      isCheck: json['isCheck'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'value': value,
      'isCheck': isCheck,
    };
  }
}