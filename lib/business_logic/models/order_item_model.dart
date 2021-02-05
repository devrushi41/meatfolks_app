class OrderItem {
  final String sku;
  final String itemName;
  final int quantity;
  final int price;

  OrderItem({this.sku, this.itemName, this.quantity, this.price});

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
        itemName: json['itemName'],
        sku: json['sku'],
        quantity: json['quantity'],
        price: json['price']);
  }
}
