import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/views/about/about_view.dart';
import 'package:flutter_web_responsive_layout/views/home/home_view.dart';
import 'package:flutter_web_responsive_layout/views/login/login_view.dart';
import 'package:flutter_web_responsive_layout/views/pricing/pricing_view.dart';
import 'package:flutter_web_responsive_layout/views/register/register_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case PricingRoute:
      return _getPageRoute(PricingView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case LoginRoute:
      return _getPageRoute(LoginView());
    case RegisterRoute:
      return _getPageRoute(RegisterView());  
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child}) 
  : super (
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) => child,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) => FadeTransition(opacity: animation, child: child)
  );
}