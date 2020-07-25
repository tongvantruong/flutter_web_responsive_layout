import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_drawer/drawer_item.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white, boxShadow: 
        [BoxShadow(color: Colors.black12, blurRadius: 16)]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem("Home", Icons.home, HomeRoute),
          DrawerItem("Pricing", Icons.monetization_on, PricingRoute),
          DrawerItem("About", Icons.help, AboutRoute)
        ],
      ),
    );
  }

}