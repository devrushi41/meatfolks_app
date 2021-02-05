class Category {
  String name;
  String id;
  String image;

  Category({this.name, this.id, this.image});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(id: json['id'], name: json['name'], image: json['image']);
  }
}
