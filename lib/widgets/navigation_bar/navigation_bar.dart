import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_bar/navihation_bar_tablet_desktop.dart';

import 'navihation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavigationBar(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(scaffoldKey),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
