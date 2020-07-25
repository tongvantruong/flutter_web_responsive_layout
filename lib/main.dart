import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_layout/locator.dart';
import 'package:flutter_web_responsive_layout/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TvTroid.com',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: LayoutTemplate(),
    );
  }
}
