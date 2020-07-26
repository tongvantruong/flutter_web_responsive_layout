import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';
import 'package:flutter_web_responsive_layout/views/layout_template/layout_template.dart';

import '../../locator.dart';

class NavigationDrawerHeader extends StatefulWidget {
  final LayoutTemplateState parentState;
  const NavigationDrawerHeader(this.parentState);

  @override
  _NavigationDrawerHeaderState createState() => new _NavigationDrawerHeaderState(parentState);
}

class _NavigationDrawerHeaderState extends State<NavigationDrawerHeader> {
  final LayoutTemplateState parentState;
  _NavigationDrawerHeaderState(this.parentState);


  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 150,
          color: primaryColor,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _renderTitle(),
              SizedBox(height: 20,),
              _renderLogoutButton()
            ],
        )
    );
  }

  Widget _renderTitle() {
    if (parentState.currentEmail.isEmpty) {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
          locator<NavigationService>().navigateTo(LoginRoute);
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
                "Tap here to Login",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
              )
          )
        )
      );
    }
    return Text(
            "Welcome\n${parentState.currentEmail}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          );
  }

  Widget _renderLogoutButton() {
    if (parentState.currentEmail.isEmpty) {
      return Text('');
    }
    return GestureDetector(
      onTap: () {
        parentState.setState(() {
          parentState.currentEmail = "";
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:  Text('Logout', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white, decoration: TextDecoration.underline))
        )
      )
    );
  }
}