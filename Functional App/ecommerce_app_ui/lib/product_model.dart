class ProductModel {
  String productname;
  String description;
  String price;
  int id;

  ProductModel({
    this.id = 0,
    required this.price,
    required this.productname,
    required this.description,
  });
}