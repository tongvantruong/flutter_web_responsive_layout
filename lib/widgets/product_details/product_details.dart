import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;
        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 16 : 21;
        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'TOEIC TEST.\nONLINE',
                style: TextStyle(fontWeight: FontWeight.w700, height: 0.9, fontSize: titleSize), textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  'Practice thousands of up-to-date TOEIC questions - New Format 2020. Speed up your brain and get highest score in the shortest time',
                  style: TextStyle(
                    fontSize: descriptionSize,
                    height: 1.7,
                  ),
                  textAlign: textAlignment,)
            ],
          ),
        );
      }
    );
    
  }
}
