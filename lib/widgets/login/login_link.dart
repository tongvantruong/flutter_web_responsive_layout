import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';
import 'package:flutter_web_responsive_layout/views/layout_template/layout_template.dart';

import '../../locator.dart';

class LoginLink extends StatefulWidget {
  final LayoutTemplateState parentState;
  const LoginLink(this.parentState);

  @override
  _LoginLinkState createState() => new _LoginLinkState(parentState);
}

class _LoginLinkState extends State<LoginLink> {
  final LayoutTemplateState parentState;
  _LoginLinkState(this.parentState);


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(LoginRoute);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(children: [
            Text(
              _getLoginText(),
              style: TextStyle(fontSize: 18),
            ),
            _renderLogout()
          ],
        )
      )
    );
  }

  String _getLoginText() {
    if (parentState.currentEmail.isEmpty) {
      return "Login";
    }
    return "${parentState.currentEmail} ";
  }

  Widget _renderLogout() {
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
        child: 
            Icon(Icons.account_circle)
        )
    );
  }
}