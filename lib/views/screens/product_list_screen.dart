import 'package:flutter/material.dart';
import 'package:meatfolks_client/business_logic/models/list_product_model.dart';
import 'package:meatfolks_client/business_logic/models/product_model.dart';
import 'package:meatfolks_client/constants.dart';
import 'package:meatfolks_client/views/widgets/custom_appbar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:meatfolks_client/views/widgets/product_list_item.dart';
import 'package:meatfolks_client/views/widgets/rating_stars.dart';

class ProductListScreen extends StatelessWidget {
  final List<ListProduct> products;
  const ProductListScreen({this.products});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 200,
        ),
        backgroundColor: Color(0xfffaf9fa),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductListItem(product: products[index]);
          },
        ),
      ),
    );
  }
}
