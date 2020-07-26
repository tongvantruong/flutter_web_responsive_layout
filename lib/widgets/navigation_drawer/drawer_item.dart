import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_bar/navbar_item.dart';

import '../../locator.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  final bool isDrawerOpen;
  const DrawerItem(this.title, this.icon, this.navigationPath, this.isDrawerOpen);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
            children: [
              Icon(icon),
              SizedBox(width:30),
              NavBarItem(title, navigationPath, isDrawerOpen)
            ],
          )
        ),
      )
    );
  }

}