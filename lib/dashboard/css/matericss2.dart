import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Halamancss2 extends StatefulWidget {
  Halamancss2({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Halaman2Statecss2 createState() => _Halaman2Statecss2();
}

class _Halaman2Statecss2 extends State<Halamancss2> {
  GlobalKey<HtmlEditorState> keyEditor = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: (Colors.black),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Materi"),
                ),
                Tab(
                  child: Text("Video"),
                ),
              ],
            ),
            title: Text('Selector Tag'),
          ),
          body: TabBarView(
            children: [
              Tab(
                  child: WebView(
                initialUrl: 'https://www.petanikode.com/css-selektor/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
              Tab(
                  child: WebView(
                initialUrl:
                    'https://www.youtube.com/watch?v=0KLwWyQyMQo&list=PLFIM0718LjIUBrbm6Gdh6k7ZUvPIAZm7p&index=7',
                javascriptMode: JavascriptMode.unrestricted,
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
