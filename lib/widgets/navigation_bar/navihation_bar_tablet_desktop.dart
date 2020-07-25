import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', HomeRoute),
              SizedBox(
                width: 30,
              ),
              NavBarItem('Pricing', PricingRoute),
              SizedBox(
                width: 30,
              ),
              NavBarItem('About', AboutRoute),
              SizedBox(
                width: 30,
              ),
              NavBarItem('Login', LoginRoute),
            ],
          )
        ],
      ),
    );
  }
}
