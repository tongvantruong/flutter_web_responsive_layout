import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/views/layout_template/layout_template.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_drawer/drawer_item.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  final LayoutTemplateState parentState;
  const NavigationDrawer(this.parentState);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white, boxShadow: 
        [BoxShadow(color: Colors.black12, blurRadius: 16)]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(parentState),
          DrawerItem("Home", Icons.home, HomeRoute, true),
          DrawerItem("Pricing", Icons.monetization_on, PricingRoute, true),
          DrawerItem("About", Icons.help, AboutRoute, true)
        ],
      ),
    );
  }

}