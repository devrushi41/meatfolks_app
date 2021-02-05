import 'package:flutter/material.dart';
import 'package:meatfolks_client/constants.dart';

class LoadingScreen extends StatelessWidget {
  static String routeName = '/loading';
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('Loading...'),
          )
        ],
      ),
    );
  }
}
