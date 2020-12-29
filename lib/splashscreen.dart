import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:belajaryukk/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    masuk();
  }

  masuk() async {
    var waktu = const Duration(seconds: 4);
    return Timer(waktu, () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return Login();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image(
          image: AssetImage("images/splash.jpg"),
          height: 800,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
