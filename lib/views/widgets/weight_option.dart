import 'package:flutter/material.dart';

class WeightOption extends StatefulWidget {
  @override
  _WeightOptionState createState() => _WeightOptionState();
}

class _WeightOptionState extends State<WeightOption> {
  var selectedRadio = 1;
  var selectedRadioTile = 1;
  var selectedCutRadio = 2;
  var selectedCutRadioTile = 2;
  var qty = 1;
  var price = 100;
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  setSelectedCutRadioTile(int val) {
    setState(() {
      selectedCutRadioTile = val;
    });
  }

  setPrice(int val) {
    setState(() {
      price = val == 1 ? 100 * qty : 200 * qty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Weight",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          RadioListTile(
            value: 1,
            groupValue: selectedRadioTile,
            title: Text("500gm"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedRadioTile(val);
              setPrice(val);
            },
            activeColor: Colors.red,
            secondary: Container(child: Text("₹100/-")),
            selected: selectedRadioTile == 1 ? true : false,
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedRadioTile,
            title: Text("1kg"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedRadioTile(val);
              setPrice(val);
            },
            activeColor: Colors.red,
            secondary: Container(child: Text("₹200/-")),
            selected: selectedRadioTile == 2 ? true : false,
          ),
        ],
      ),
    );
  }
}
