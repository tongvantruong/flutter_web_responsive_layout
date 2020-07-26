import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web_responsive_layout/locator.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/routing/router.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';
import 'package:flutter_web_responsive_layout/widgets/centered_view/centered_view.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_web_responsive_layout/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatefulWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  LayoutTemplateState createState() => LayoutTemplateState();
}

class LayoutTemplateState extends State<LayoutTemplate> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String currentEmail = "";

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>
      Scaffold(
        key: _scaffoldKey,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? NavigationDrawer(this) : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(this, _scaffoldKey),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: _generateRoute,
                  initialRoute: HomeRoute,
                )
              )
            ],
          ),
        ),
      )
    );
  }

  Route<dynamic> _generateRoute(RouteSettings settings) {
    return generateRoute(settings, this);
  }
}
