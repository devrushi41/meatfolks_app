import 'package:flutter/material.dart';

class AddonOptions extends StatefulWidget {
  @override
  _AddonOptionsState createState() => _AddonOptionsState();
}

class _AddonOptionsState extends State<AddonOptions> {
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
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select to include these pieces",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('Liver/heart'),
            value: liv,
            activeColor: Colors.red,
            selected: liv == true ? true : false,
            onChanged: (bool value) {
              setState(() {
                this.liv = value;
              });
              print('$liv');
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('gizzard'),
            value: true,
            activeColor: Colors.red,
            onChanged: (bool value) {
              // setState(() {
              //   this.subvalue = value;
              // });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('Leg piece'),
            value: false,
            activeColor: Colors.red,
            onChanged: (bool value) {
              // setState(() {
              //   this.subvalue = value;
              // });
            },
          ),
        ],
      ),
    );
  }
}
