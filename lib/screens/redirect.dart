import 'package:belajaryukk/dashboard/dashboard.dart';
import 'package:belajaryukk/dashboard/drawerScreen.dart';
import 'package:flutter/material.dart';

class Redirect extends StatefulWidget {
  @override
  _RedirectState createState() => _RedirectState();
}

class _RedirectState extends State<Redirect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), HomeScreen()],
      ),
    );
  }
}
