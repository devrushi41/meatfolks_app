import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const TextStyle boldTextStyle =
    TextStyle(fontSize: 13, fontWeight: FontWeight.w400);
const TextStyle detailsTextStyle =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w600);

class OrderDetailsCard extends StatelessWidget {
  final int orderNo, price;
  final String items, location;
  final DateTime date;
  OrderDetailsCard(
      {@required this.orderNo,
      @required this.price,
      @required this.items,
      @required this.location,
      @required this.date});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Working");
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.all(15),
        borderOnForeground: true,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Order #$orderNo",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  location,
                  style: boldTextStyle,
                ),
              ]),
              Divider(
                color: Colors.black,
              ),
              Text(
                "ITEMS",
                style: boldTextStyle,
              ),
              SizedBox(height: 5),
              Text(
                items,
                style: detailsTextStyle,
              ),
              SizedBox(height: 5),
              Text(
                "ORDERED ON",
                style: boldTextStyle,
              ),
              SizedBox(height: 5),
              Text(
                DateFormat('dd MMMM,yyyy hh:mm a').format(date).toString(),
                style: detailsTextStyle,
              ),
              SizedBox(height: 5),
              Text(
                "TOTAL AMOUNT",
                style: boldTextStyle,
              ),
              SizedBox(height: 5),
              Text(
                "Rs. $price",
                style: detailsTextStyle,
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("WOrking");
                    },
                    child: Row(children: [
                      Icon(
                        Icons.loop,
                        color: Colors.redAccent,
                      ),
                      SizedBox(width: 5),
                      Text("Repeat Order",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15,
                          )),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
