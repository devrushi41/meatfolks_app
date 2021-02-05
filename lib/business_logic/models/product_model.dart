class Product {
  String id;
  String name;
  String categoryId;
  List<String> images;
  double price;

  Product({this.id, this.name, this.categoryId, this.images, this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        categoryId: json['categoryId'],
        images: json['images'].toList(),
        price: json['price']);
  }
}
