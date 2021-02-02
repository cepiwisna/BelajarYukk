import 'package:belajaryukk/dashboard/html/materi3.dart';
import 'package:belajaryukk/dashboard/html/materi4.dart';
import 'package:flutter/material.dart';

import 'materi1.dart';
import 'materi2.dart';

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
                    child: Hero(tag: 1, child: Image.asset('images/html.png')),
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
                                  subtitle: Text('Pengenalan HTML.'),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halaman()),
                              )),
                      InkWell(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Materi Kedua'),
                                  subtitle: Text('Paragraf.'),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halaman2()),
                              )),
                      InkWell(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Materi Ketiga'),
                                  subtitle: Text('Membuat Heading.'),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halaman3()),
                              )),
                      InkWell(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Materi Keempat'),
                                  subtitle: Text('Membuat Tabel.'),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halaman4()),
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
