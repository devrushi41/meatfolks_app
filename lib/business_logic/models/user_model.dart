import 'address_model.dart';
import 'order_model.dart';
import 'review_model.dart';

class User {
  String id;
  String email;
  String phoneNumber;
  String firstName;
  String lastName;
  String image;
  List<Address> addresses;
  List<Order> orders;
  List<Review> reviews;
  int activeAddress;

  User(
      {this.firstName,
      this.reviews,
      this.lastName,
      this.addresses,
      this.activeAddress,
      this.id,
      this.email,
      this.phoneNumber,
      this.image,
      this.orders});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      activeAddress: json['activeAddress'],
      phoneNumber: json['phoneNumber'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      id: json['id'],
      email: json['email'],
      image: json['image'],
      reviews: json['reviews'].map((item) => Review.fromJson(item)).toList(),
      orders: json['orders'].map((item) => Order.fromJson(item)).toList(),
      addresses:
          json['addresses'].map((item) => Address.fromJson(item)).toList(),
    );
  }
}
