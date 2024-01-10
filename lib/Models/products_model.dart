class ProductModel {
  // late int id;
  // late int sub_category_id;
  late String id,
      sub_category_id,
      name,
      description,
      image,
      size,
      color,
      price,
      date;

  var isEmpty;
  // late double price;
  // late DateTime date;
  ProductModel.fromJson(Map<dynamic, dynamic> json) {
    {
      id = json['p_id'];
      sub_category_id = json['sub_category_id'];
      name = json['name'];
      description = json['description'];
      image = json['image'];
      size = json['size'];
      color = json['color'];
      price = json['price'];
      date = json['date'];
    }
  }
}
