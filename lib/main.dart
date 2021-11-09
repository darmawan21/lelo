import 'package:flutter/material.dart';
import 'package:lelo/pages/home/main_page.dart';
import 'package:lelo/pages/sign_in_page.dart';
import 'package:lelo/pages/sign_up_page.dart';
import 'package:lelo/pages/splash_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
