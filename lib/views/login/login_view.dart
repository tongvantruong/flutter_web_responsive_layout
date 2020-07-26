import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';
import 'package:flutter_web_responsive_layout/views/layout_template/layout_template.dart';
import 'package:flutter_web_responsive_layout/widgets/buttons/button_type.dart';
import 'package:flutter_web_responsive_layout/widgets/buttons/primary_button.dart';

import '../../locator.dart';

class LoginView extends StatefulWidget {
  final LayoutTemplateState parentState;
  const LoginView(this.parentState);

  @override
  _LoginViewStatefulWidgetState createState() => _LoginViewStatefulWidgetState(parentState);
}

class _LoginViewStatefulWidgetState extends State<LoginView> {
  final LayoutTemplateState parentState;
  _LoginViewStatefulWidgetState(this.parentState);

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                      controller: _emailController,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: PrimaryButton("Login", ButtonType.Small, () {
                        if (_formKey.currentState.validate()) {
                          _login();
                        }
                      })
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

  Future<void> _login() async {
    parentState.setState(() {
      parentState.currentEmail = _emailController.text;
      locator<NavigationService>().navigateTo(HomeRoute);
    });
  }
}