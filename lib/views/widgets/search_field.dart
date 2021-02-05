import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 2,
      child: TextField(
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: (20), vertical: (9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }
}
