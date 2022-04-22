import 'dart:async';

import 'package:flutter/material.dart';
import 'package:UberEats/Authenticate/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Colors.black,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Text(
            "UberEats",
            style: TextStyle(
              fontSize: 42,
              color: Colors.green,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      
    );
  }
}
