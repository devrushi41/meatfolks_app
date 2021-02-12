import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_back_ios)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 2,
                child: Hero(
                  tag: 12,
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/chicken-curry-cut.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chicken curry cut skinless",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(child: Icon(Icons.favorite_border)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "Our Chicken Curry Cut can be used to prepare your favorite non-veg dishes. Our Chicken Curry Cut is carved into perfect pieces to give you the ideal portion for your curries.",
                      style: TextStyle(fontSize: 14, height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Flexible(
                    //   child: Text(
                    //     "sl21",
                    //     style: TextStyle(fontSize: 16, height: 1.5),
                    //   ),
                    // ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Weight",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cut Size",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select to include these pieces",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
              ),
              SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: <Widget>[
              //       Flexible(
              //         child: Row(children: [
              //           InkWell(
              //             onTap: () {
              //               // setState(() {

              //               //   activeSize = 2;

              //               // });
              //             },
              //             child: Padding(
              //               padding: const EdgeInsets.only(right: 8, left: 8),
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   border: Border.all(
              //                     width: 2,
              //                     color: Colors.orange,
              //                   ),
              //                   borderRadius: BorderRadius.circular(5),
              //                   //color: Colors.orange.withOpacity(0.4)
              //                 ),
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(6.0),
              //                   child: Text(
              //                     "500gm",
              //                     style: TextStyle(fontSize: 16, height: 1.5),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {
              //               // setState(() {

              //               //   activeSize = 2;

              //               // });
              //             },
              //             child: Container(
              //               decoration: BoxDecoration(
              //                   border: Border.all(
              //                     width: 2,
              //                     color: Colors.orange,
              //                   ),
              //                   borderRadius: BorderRadius.circular(5),
              //                   color: Colors.orange.withOpacity(0.4)),
              //               child: Padding(
              //                 padding: const EdgeInsets.all(6.0),
              //                 child: Text(
              //                   "1kg",
              //                   style: TextStyle(fontSize: 16, height: 1.5),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ]),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),

              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        // bottomSheet: Container(

        //   height: 60,
        //   width: size.width,
        //   child: FlatButton(
        //       color: Colors.orange,
        //       onPressed: () {
        //         // your add cart here
        //       },
        //       child: Text(
        //         "ADD TO CART",
        //         style: TextStyle(fontSize: 18, color: Colors.white),
        //       )),
        // ),
        bottomSheet: Container(
          height: 70,
          width: size.width,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                if (qty > 1) {
                                  setState(() {
                                    qty = --qty;
                                  });
                                  setPrice(selectedRadioTile);
                                }
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "$qty",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  qty = ++qty;
                                });
                                setPrice(selectedRadioTile);
                              },
                              child: Container(
                                // decoration: BoxDecoration(
                                //     border: Border.all(
                                //         color: Colors.black.withOpacity(0.5))),
                                width: 20,
                                height: 20,
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    // Text(
                    //   "Total",
                    //   style: TextStyle(
                    //       fontSize: 15,
                    //       color: Colors.black.withOpacity(0.5),
                    //       fontWeight: FontWeight.w600),
                    // ),
                    // Text(
                    //   "\₹ 200.00",
                    //   style:
                    //       TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    // ),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.black,
                        onPressed: () {},
                        child: Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              "Add to Cart  " + " ₹$price",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20),
              //   child: FlatButton(
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(30)),
              //       color: Colors.black,
              //       onPressed: () {},
              //       child: Container(
              //         height: 40,
              //         child: Center(
              //           child: Text(
              //             "Add to Cart",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w600),
              //           ),
              //         ),
              //       )),
              // )
            ],
          ),
        ));
  }
}
