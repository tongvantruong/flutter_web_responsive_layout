import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';

import '../../locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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