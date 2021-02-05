import 'package:flutter/material.dart';
import '../widgets/profile_menu.dart';
import '../widgets/profile_pic.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = '/profile';
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: Icons.person,
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: Icons.alarm,
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: Icons.settings,
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: Icons.help,
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: Icons.power,
            press: () {},
          ),
        ],
      ),
    );
  }
}
