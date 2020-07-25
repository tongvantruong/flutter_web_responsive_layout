import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';

import '../../locator.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  _LoginViewStatefulWidgetState createState() => _LoginViewStatefulWidgetState();
}

class _LoginViewStatefulWidgetState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 600,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        color: primaryColor,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            // Process data.
                          }
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Login", 
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),

                        )
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account?', style: TextStyle(fontSize: 14)),
                            SizedBox(width: 8,),
                            GestureDetector(
                              onTap: () {
                                locator<NavigationService>().navigateTo(RegisterRoute);
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Register",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    )
                  ],
                ),
              )
            )
        )
      )
    );
    
  }
}