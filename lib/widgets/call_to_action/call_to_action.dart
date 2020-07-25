import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web_responsive_layout/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:flutter_web_responsive_layout/widgets/call_to_action/call_to_action_tablet_mobile.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
