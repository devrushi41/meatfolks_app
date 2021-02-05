import 'package:flutter/material.dart';
import 'package:meatfolks_client/views/widgets/default_button.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign In"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Welcome to Hungri",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your phone number",
                ),
                SizedBox(
                  height: 100,
                ),
                TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: " Enter your phone number",
                      prefixIcon: Icon(Icons.phone)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: DefaultButton(
                      text: "Continue",
                      press: () {
                        print("hello");
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
