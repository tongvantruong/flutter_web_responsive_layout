import 'package:flutter/material.dart';
import 'navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavigationBarMobile(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {
            scaffoldKey.currentState.openDrawer();
          }),
          NavBarLogo()
        ],
      ),
    );
  }
}
