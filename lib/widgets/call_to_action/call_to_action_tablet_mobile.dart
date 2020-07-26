import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';
import 'package:flutter_web_responsive_layout/widgets/buttons/button_type.dart';
import 'dart:html' as html;

import 'package:flutter_web_responsive_layout/widgets/buttons/primary_button.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(title, ButtonType.Small, _launchURL);
  }

  _launchURL() {
    html.window.open('https://tvtroid.com', 'TvTroid');
  }
}