import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blueGrey[200],
                  child: Align(
                    alignment: Alignment.center,
                    child:
                        Hero(tag: 1, child: Image.asset('images/javalogo.png')),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(icon: Icon(Icons.share), onPressed: () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
