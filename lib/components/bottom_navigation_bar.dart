import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_in_test/constants.dart';

class BottomNavBar extends StatelessWidget {  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            icon: Icons.home,
            isActive: true,
          ),
          BottomNavItem(
            title: "Fav Places",
            icon: Icons.favorite,
          ),
          BottomNavItem(
            title: "Profile",
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.icon,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: isActive ? kPrimaryColor : Colors.black54,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kPrimaryColor : Colors.black54),
          ),
        ],
      ),
    );
  }
}