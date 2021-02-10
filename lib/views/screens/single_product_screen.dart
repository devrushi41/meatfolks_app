import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
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
                          image: AssetImage("assets/images/skinless.jpg"),
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
                        fontSize: 18, height: 1.5, fontWeight: FontWeight.bold),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Flexible(
                  //     child: Wrap(
                  //         children: List.generate(2, (index) {
                  //   return Padding(
                  //     padding: const EdgeInsets.only(right: 20),
                  //     child: InkWell(
                  //       onTap: () {
                  //         // setState(() {
                  //         //   activeSize = 2;
                  //         // });
                  //       },
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //             border: Border.all(
                  //               width: 2,
                  //               color: Colors.orange,
                  //             ),
                  //             borderRadius: BorderRadius.circular(5),
                  //             color: Colors.orange.withOpacity(0.4)),
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(6.0),
                  //           child: Text(
                  //             "500gm",
                  //             style: TextStyle(fontSize: 16, height: 1.5),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   );
                  // }))),
                  Flexible(
                    child: Row(children: [
                      InkWell(
                        onTap: () {
                          // setState(() {

                          //   activeSize = 2;

                          // });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.orange,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              //color: Colors.orange.withOpacity(0.4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "500gm",
                                style: TextStyle(fontSize: 16, height: 1.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // setState(() {

                          //   activeSize = 2;

                          // });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.orange,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange.withOpacity(0.4)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "1kg",
                              style: TextStyle(fontSize: 16, height: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                      child: Row(
                    children: <Widget>[
                      Text(
                        "₹" + " 240",
                        style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.orange,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "₹" + " 200",
                        style: TextStyle(fontSize: 18, height: 1.5),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Qty :",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          // if(qty > 1){
                          //   setState(() {
                          //     qty = --qty;
                          //   });
                          // }
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
                        "1",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      InkWell(
                        onTap: () {
                          // setState(() {
                          //     qty = ++qty;
                          //   });
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
                  )),
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
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60,
        width: size.width,
        child: FlatButton(
            color: Colors.orange,
            onPressed: () {
              // your add cart here
            },
            child: Text(
              "ADD TO CART",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ),
    );
  }
}

// Widget property() {
//   return Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Weight",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16)),
//             SizedBox(height: 10),
//             Row(
//               children: List.generate(
//                   4,
//                   (index) => GestureDetector(
//                         onTap: () {
//                           print("index $index clicked");
//                           // setState(() {
//                           //   selectedColor = colors[index];
//                           // });
//                         },
//                         child: Container(
//                           padding: EdgeInsets.all(8),
//                           margin: EdgeInsets.only(right: 10),
//                           height: 34,
//                           width: 34,
//                           child: SizedBox(),
//                           decoration: BoxDecoration(
//                               color: Colors.amber,
//                               borderRadius: BorderRadius.circular(17)),
//                         ),
//                       )),
//             )
//           ],
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Size",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16)),
//             SizedBox(height: 10),
//             Container(
//                 padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//                 color: Colors.blue.withOpacity(0.10),
//                 child: Text(
//                   "10.2",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ))
//           ],
//         )
//       ],
//     ),
//   );
// }
