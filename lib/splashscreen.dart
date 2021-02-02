import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:belajaryukk/screens/login.dart';

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
        return LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splashnew.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
