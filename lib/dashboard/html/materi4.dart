import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Halaman4 extends StatefulWidget {
  Halaman4({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Halaman4State createState() => _Halaman4State();
}

class _Halaman4State extends State<Halaman4> {
  GlobalKey<HtmlEditorState> keyEditor = GlobalKey();

  String result = "";
  List<String> contentOfPage1 = [
    "<table border=" ">",
    "\n<tr>",
    "\n\<td>baris 1 / kolom 2</td>",
    "\n<<td>baris 1 / kolom 3</td>",
    "\n	</tr>",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: DefaultTabController(
        length: 4,
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
                Tab(child: Text("Coding")),
                Tab(
                  child: Text("Praktek"),
                ),
              ],
            ),
            title: Text('Membuat Tabel'),
          ),
          body: TabBarView(
            children: [
              Tab(
                  child: WebView(
                initialUrl: 'https://www.petanikode.com/html-tabel/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
              Tab(
                  child: WebView(
                initialUrl:
                    'https://www.youtube.com/watch?v=7-QNafrXigs&list=PLFIM0718LjIVuONHysfOK0ZtiqUWvrx4F&index=10/',
                javascriptMode: JavascriptMode.unrestricted,
              )),
              Tab(
                child: Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.italic),
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
