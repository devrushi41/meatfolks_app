import 'package:flutter/material.dart';
import 'package:meatfolks_client/views/widgets/search_field.dart';
import '../widgets/image_card.dart';
import '../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SearchField(),
      SizedBox(
        height: 20,
      ),
      CustomText(text: "What would you like to eat ?"),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageCard(
            image: 'nonveg',
            text: "Meat & Fish",
          ),
          ImageCard(
            image: 'pickles',
            text: "Pickles",
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageCard(
            image: 'biryani',
            text: "Biryani",
          ),
          ImageCard(
            image: 'specials',
            text: "Specials",
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Container(
          color: Colors.grey[200],
          height: 15,
        ),
      ),
      CustomText(text: "Top picks for you"),
      Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ImageCard(
                image: 'freedelivery',
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              ImageCard(
                image: '30off',
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              ImageCard(
                image: 'freedelivery',
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              ImageCard(
                image: '30off',
                width: MediaQuery.of(context).size.width / 1.5,
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Container(
          color: Colors.grey[200],
          height: 15,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(text: "Popular"),
      ),
      Stack(
        children: [
          // ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Image.asset('assets/images/chickensalad.jpg')),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.amber[900],
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                )
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
