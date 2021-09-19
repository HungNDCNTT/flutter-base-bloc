import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/ui/uis/forgot_password/forgot_password_page.dart';
import 'package:flutter_base_bloc/ui/uis/main/main_page.dart';
import 'package:flutter_base_bloc/ui/uis/sign_in/sign_in_page.dart';
import 'package:flutter_base_bloc/ui/uis/sign_up/sign_up_page.dart';
import 'package:flutter_base_bloc/ui/uis/splash/splash_page.dart';

Handler notHandler = Handler(
  handlerFunc: (context, Map<String, List<String>> params) => Scaffold(
    body: Center(
      child: Text('$params'),
    ),
  ),
);

Handler splashHandler = new Handler(
  handlerFunc: (context, Map<String, List<String>> params) => SplashPage(),
);

///Auth
Handler signInHandler =
    Handler(handlerFunc: (context, Map<String, List<String>> params) {
  return SignInPage();
});
Handler signUpHandler =
    Handler(handlerFunc: (context, Map<String, List<String>> params) {
  return SignUpPage();
});
Handler forgotPasswordHandler =
    Handler(handlerFunc: (context, Map<String, List<String>> params) {
  return ForgotPasswordPage();
});

///Home
Handler mainHandler =
    Handler(handlerFunc: (context, Map<String, List<String>> params) {
  return MainPage();
});
