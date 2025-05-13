import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNav({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final List<IconData> iconList = const [
    Icons.home,
    Icons.message,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: currentIndex,
      gapLocation: GapLocation.none,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      backgroundColor: Colors.black,
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
      onTap: onTap,
    );
  }
}
