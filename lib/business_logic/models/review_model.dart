class Review {
  String id;
  String userId;
  String productId;
  String heading;
  String description;
  String image;
  DateTime createdDate;
  DateTime updatedDate;
  int rating;

  Review(
      {this.id,
      this.userId,
      this.heading,
      this.description,
      this.image,
      this.productId,
      this.rating,
      this.createdDate,
      this.updatedDate});

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'],
      userId: json['userId'],
      heading: json['heading'],
      description: json['description'],
      image: json['image'],
      productId: json['productId'],
      rating: json['rating'],
      createdDate: DateTime.parse(json['createdDate']),
      updatedDate: DateTime.parse(json['updatedDate']),
    );
  }
}
