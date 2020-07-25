import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_responsive_layout/widgets/product_details/product_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProductDetails(),
        SizedBox(height: 100,),
        CallToAction('Get started')
      ],
    );
  }
}