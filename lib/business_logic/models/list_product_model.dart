class ListProduct {
  String id;
  String name;
  String category;
  String image;
  String weight;
  double price;
  String units;
  double rating;

  ListProduct(
      {this.id,
      this.name,
      this.category,
      this.image,
      this.price,
      this.rating,
      this.units,
      this.weight});

  factory ListProduct.fromJson(Map<String, dynamic> json) {
    return ListProduct(
        id: json['id'],
        name: json['name'],
        category: json['category'],
        image: json['image'],
        price: json['price'],
        weight: json['weight'],
        units: json['units'],
        rating: json['rating']);
  }
}
