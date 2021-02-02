import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Halamancss extends StatefulWidget {
  Halamancss({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HalamanStatecss createState() => _HalamanStatecss();
}

class _HalamanStatecss extends State<Halamancss> {
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
                  child: Text("Pembahasan"),
                ),
                Tab(
                  child: Text("Video"),
                ),
              ],
            ),
            title: Text('Pendahuluan CSS'),
          ),
          body: TabBarView(
            children: [
              Tab(
                  child: WebView(
                initialUrl: 'https://www.petanikode.com/css-untuk-pemula/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
              Tab(
                  child: WebView(
                initialUrl:
                    'https://www.youtube.com/watch?v=CleFk3BZB3g&list=PLFIM0718LjIUBrbm6Gdh6k7ZUvPIAZm7p/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
