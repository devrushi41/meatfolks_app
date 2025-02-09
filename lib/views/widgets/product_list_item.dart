import 'package:flutter/material.dart';
import 'package:meatfolks_client/business_logic/models/list_product_model.dart';
import 'package:meatfolks_client/views/widgets/rating_stars.dart';

class ProductListItem extends StatelessWidget {
  final ListProduct product;
  const ProductListItem({@required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Clicked on ");
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0, 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2f2e2f),
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          'In ${product.category}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff2f2e2f),
                          ),
                        ),
                      ),
                      buildRating(product.rating),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Rs ${product.price.toStringAsFixed(2)} / ${product.units}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 12.0, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image.asset(
                      product.image,
                      height: MediaQuery.of(context).size.height / 9,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 4,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget buildRating(double rating) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber[50],
          border: Border.all(color: Colors.amber[200]),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        children: [
          StarRating(
            rating: rating,
          ),
          Text(
            '($rating)',
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
