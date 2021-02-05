import 'package:flutter/material.dart';
import 'history_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/main';
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _navIndex = 0;

  final pages = List<Widget>.unmodifiable(
      [HomeScreen(), HistoryScreen(), ProfileScreen()]);

  final iconList = List<Icon>.unmodifiable([
    Icon(
      Icons.store,
      semanticLabel: 'Order',
    ),
    Icon(
      Icons.shopping_bag,
      semanticLabel: 'History',
    ),
    Icon(
      Icons.account_circle_rounded,
      semanticLabel: 'Profile',
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(
            height: 200,
          ),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: pages[_navIndex],
          ),
          bottomNavigationBar: CustomNavBar(
            currentTab: _navIndex,
            icons: iconList,
            onPressed: (index) => setState(() => _navIndex = index),
          )),
    );
  }
}
