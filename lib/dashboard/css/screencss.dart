import 'package:belajaryukk/dashboard/css/matericss.dart';
import 'package:belajaryukk/dashboard/css/matericss2.dart';
import 'package:flutter/material.dart';

class Screencss extends StatelessWidget {
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
                    child: Hero(tag: 1, child: Image.asset('images/cssss.png')),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      InkWell(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Materi Pertama'),
                                  subtitle: Text('Pengenalan CSS.'),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halamancss()),
                              )),
                      InkWell(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Materi Kedua'),
                                  subtitle: Text('Selector.'),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halamancss2()),
                              )),
                    ],
                  ),
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
