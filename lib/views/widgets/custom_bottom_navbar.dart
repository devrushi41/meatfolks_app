import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:meatfolks_client/constants.dart';

class CustomNavBar extends StatefulWidget {
  final int currentTab;
  final Function(int) onPressed;
  final List<Icon> icons;
  CustomNavBar(
      {@required this.icons,
      @required this.currentTab,
      @required this.onPressed})
      : assert(icons != null);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  // configuration for Snake Navigation Bar
  final snakeBarBehaviour = SnakeBarBehaviour.pinned;
  final snakeShape = SnakeShape.indicator;

  final elevation = 2.0;
  final selectedColor = kPrimaryColor;
  final unselectedItemColor = kSecondaryColor;
  final showUnselectedLabels = true;
  final showSelectedLabels = true;

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      elevation: elevation,
      behaviour: snakeBarBehaviour,
      snakeShape: snakeShape,

      // Configuration for SnakeNavigationBar.color
      snakeViewColor: selectedColor,
      selectedItemColor: selectedColor,
      unselectedItemColor: unselectedItemColor,
      showUnselectedLabels: showUnselectedLabels,
      showSelectedLabels: showSelectedLabels,
      currentIndex: widget.currentTab,
      onTap: (index) => widget.onPressed(index),
      items: [
        for (var index = 0; index < widget.icons.length; index++)
          BottomNavigationBarItem(
              icon: widget.icons[index],
              label: widget.icons[index].semanticLabel),
      ],
    );
  }
}
