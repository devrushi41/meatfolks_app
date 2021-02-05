import 'order_item_model.dart';

class Order {
  String userId;
  String id;
  List<OrderItem> orderItems;
  DateTime createdDate;
  DateTime updatedDate;
  double totalBill;
  double taxAmount;
  double deliveryCost;
  String status;
  String messagingToken;

  Order(
      {this.userId,
      this.id,
      this.taxAmount,
      this.deliveryCost,
      this.orderItems,
      this.createdDate,
      this.updatedDate,
      this.totalBill,
      this.status});

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      userId: json['userId'],
      id: json['id'],
      taxAmount: json['taxAmount'],
      deliveryCost: json['deliveryCost'],
      totalBill: json['totalBill'],
      status: json['status'],
      orderItems:
          json['orderItems'].map((item) => OrderItem.fromJson(item)).toList(),
      createdDate: DateTime.parse(json['createdDate']),
      updatedDate: DateTime.parse(json['updatedDate']),
    );
  }
}
