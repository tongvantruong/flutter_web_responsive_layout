import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'OK Now',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text('TAP HERE')
        ],
      ),
    );
  }

}