import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_responsive_layout/widgets/product_details/product_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              ProductDetails(),
              Expanded(
                child: Center(
                  child: CallToAction('Get started'),
                ),
              )
            ],
          );
  }
}