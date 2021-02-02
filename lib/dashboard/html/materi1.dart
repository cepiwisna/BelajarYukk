import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Halaman extends StatefulWidget {
  Halaman({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HalamanState createState() => _HalamanState();
}

class _HalamanState extends State<Halaman> {
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
            title: Text('HTML MATERI'),
          ),
          body: TabBarView(
            children: [
              Tab(
                  child: WebView(
                initialUrl: 'https://www.petanikode.com/html-dasar//',
                javascriptMode: JavascriptMode.unrestricted,
              )),
              Tab(
                  child: WebView(
                initialUrl:
                    'https://www.youtube.com/watch?v=NBZ9Ro6UKV8&list=PLFIM0718LjIVuONHysfOK0ZtiqUWvrx4F&index=1/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
