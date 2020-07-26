import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_layout/constants/app_colors.dart';
import 'package:flutter_web_responsive_layout/routing/route_name.dart';
import 'package:flutter_web_responsive_layout/services/navigation_service.dart';
import 'package:flutter_web_responsive_layout/views/login/login_view.dart';
import 'package:flutter_web_responsive_layout/widgets/buttons/button_type.dart';
import 'package:flutter_web_responsive_layout/widgets/buttons/primary_button.dart';

import '../../locator.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key key}) : super(key: key);

  @override
  _LoginViewStatefulWidgetState createState() => _LoginViewStatefulWidgetState();
}

class _LoginViewStatefulWidgetState extends State<RegisterView> {
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your name',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: PrimaryButton("Register", ButtonType.Small, () {
                        if (_formKey.currentState.validate()) {
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
                            Text('Already have an account?', style: TextStyle(fontSize: 14)),
                            SizedBox(width: 8,),
                            GestureDetector(
                              onTap: () {
                                locator<NavigationService>().navigateTo(LoginRoute);
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Login",
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