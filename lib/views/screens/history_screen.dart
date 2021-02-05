import 'package:flutter/material.dart';
import '../widgets/order_details_card.dart';

class HistoryScreen extends StatefulWidget {
  static String routeName = '/history';
  HistoryScreen({Key key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: OrderDetailsCard(
          orderNo: 661,
          price: 280,
          items: "1kg x Boneless Chicken",
          location: "Tanuku",
          date: DateTime.now(),
        ),
        //LocationPicker(),
      ),
    );
  }
}
