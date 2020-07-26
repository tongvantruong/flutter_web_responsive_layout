import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';

import '../../locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final bool isDrawerOpen;
  const NavBarItem(this.title, this.navigationPath, this.isDrawerOpen);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isDrawerOpen) {
          Navigator.pop(context);
        }
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      )
    );
  }
}