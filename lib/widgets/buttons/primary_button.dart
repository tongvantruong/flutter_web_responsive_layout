import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';
import 'package:flutter_web_responsive_layout/widgets/buttons/button_type.dart';

class PrimaryButton extends StatelessWidget {
  final ButtonType type;
  final String title;
  final VoidCallback onPressed;
  const PrimaryButton(this.title, this.type, this.onPressed);

  @override
  Widget build(Object context) {
    return MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          color: primaryColor,
          onPressed: () {
            onPressed();
          },
          child: Container(
            height: _initHeight(),
            alignment: Alignment.center,
            child: Text(title, 
              style: TextStyle(
                fontSize: _initFontSize(),
                fontWeight: _initFontWeight(),
                color: Colors.white,
              ),
            ),
          )
        );
  }

  FontWeight _initFontWeight() {
    switch (type) {
      case ButtonType.Large:
        return FontWeight.w800;
      case ButtonType.Medium:
        return FontWeight.w800;
      case ButtonType.Small:
        return FontWeight.w800;
      default:
        return FontWeight.w800;
    }
  }

  double _initFontSize() {
    switch (type) {
      case ButtonType.Large:
        return 16;
      case ButtonType.Medium:
        return 16;
      case ButtonType.Small:
        return 16;
      default:
        return 16;
    }
  }

  double _initHeight() {
    switch (type) {
      case ButtonType.Large:
        return 70;
      case ButtonType.Medium:
        return 60;
      case ButtonType.Small:
        return 50;
      default:
        return 50;
    }
  }
  
}