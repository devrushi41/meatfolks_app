import 'package:flutter/material.dart';

class CutsizeOption extends StatefulWidget {
  @override
  _CutsizeOptionState createState() => _CutsizeOptionState();
}

class _CutsizeOptionState extends State<CutsizeOption> {
  var selectedRadio = 1;
  var selectedRadioTile = 1;
  var selectedCutRadio = 2;
  var selectedCutRadioTile = 2;
  var qty = 1;
  var price = 100;
  bool liv = true;
  bool leg = false;
  bool gizz = false;
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
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cut Size",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          RadioListTile(
            value: 1,
            groupValue: selectedCutRadioTile,
            title: Text("small"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedCutRadioTile(val);
            },
            activeColor: Colors.red,
            selected: selectedCutRadioTile == 1 ? true : false,
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedCutRadioTile,
            title: Text("Medium"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedCutRadioTile(val);
            },
            activeColor: Colors.red,
            selected: selectedCutRadioTile == 2 ? true : false,
          ),
          RadioListTile(
            value: 3,
            groupValue: selectedCutRadioTile,
            title: Text("Large"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedCutRadioTile(val);
            },
            activeColor: Colors.red,
            selected: selectedCutRadioTile == 3 ? true : false,
          ),
        ],
      ),
    );
  }
}
