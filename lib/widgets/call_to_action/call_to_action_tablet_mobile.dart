import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';
import 'dart:html' as html;

class CallToActionMobile extends StatelessWidget {
  final String title;
  CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6)
      ),
      color: primaryColor,
      onPressed: _launchURL,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        child: Text(title, 
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),

      )
    );
  }

  _launchURL() {
    html.window.open('https://tvtroid.com', 'TvTroid');
  }
}