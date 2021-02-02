import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../configuration.dart';

class Halaman2 extends StatefulWidget {
  Halaman2({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Halaman2State createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
  GlobalKey<HtmlEditorState> keyEditor = GlobalKey();

  String result = "";
  List<String> contentOfPage1 = [
    "<html lang='fr'>",
    "\n<body>",
    "\n\t<p>Hallo Word</p>",
    "\n</body>",
    "\n</html>",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryGreen,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Pembahasan"),
                ),
                Tab(child: Text("Coding")),
                Tab(
                  child: Text("Compiler"),
                ),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Tab(
                  child: WebView(
                initialUrl:
                    'https://www.malasngoding.com/belajar-html-membuat-paragraf-pada-html/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
              Tab(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      SelectableText(
                        contentOfPage1[0] +
                            contentOfPage1[1] +
                            contentOfPage1[2] +
                            contentOfPage1[3] +
                            contentOfPage1[4],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HtmlEditor(
                          hint: "Masukan Code",
                          key: keyEditor,
                          height: 400,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                color: Colors.blueGrey,
                                onPressed: () {
                                  setState(() {
                                    keyEditor.currentState.setEmpty();
                                  });
                                },
                                child: Text("Reset",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              FlatButton(
                                color: Colors.blue,
                                onPressed: () async {
                                  final txt =
                                      await keyEditor.currentState.getText();
                                  setState(() {
                                    result = txt;
                                  });
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(result),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
