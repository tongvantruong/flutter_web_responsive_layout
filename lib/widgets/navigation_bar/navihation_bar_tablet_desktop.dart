import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/views/layout_template/layout_template.dart';
import 'package:flutter_web_responsive_layout/widgets/login/login_link.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatefulWidget {
  final LayoutTemplateState parentState;
  const NavigationBarTabletDesktop(this.parentState);

  @override
  _NavigationBarTabletDesktopState createState() => new _NavigationBarTabletDesktopState(parentState);
}

class _NavigationBarTabletDesktopState extends State<NavigationBarTabletDesktop> {
  final LayoutTemplateState parentState;
  _NavigationBarTabletDesktopState(this.parentState);

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
              NavBarItem('Home', HomeRoute, false),
              SizedBox(
                width: 20,
              ),
              NavBarItem('Pricing', PricingRoute, false),
              SizedBox(
                width: 20,
              ),
              NavBarItem('About', AboutRoute, false),
              SizedBox(
                width: 20,
              ),
              LoginLink(parentState)
            ],
          )
        ],
      ),
    );
  }
}
