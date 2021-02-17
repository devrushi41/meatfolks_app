import 'package:flutter/material.dart';
import '../widgets/weight_option.dart';
import '../widgets/cutsize_option.dart';
import '../widgets/addon_options.dart';

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
                  )),
              SizedBox(
                height: 20,
              ),
              WeightOption(),
              CutsizeOption(),
              SizedBox(
                height: 20,
              ),
              AddonOptions(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
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
