import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lelo/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 111,
          height: 71,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image_logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
