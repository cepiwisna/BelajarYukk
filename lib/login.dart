import 'package:belajaryukk/dashboard.dart';
import 'package:belajaryukk/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Container(
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: 250),
                  Container(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: username,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: password,
                    onChanged: (value) {
                      setState(() {});
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      prefixIcon: Icon(Icons.vpn_key_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  RaisedButton(
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Text("Login"),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }),
                  FlatButton(
                    child: Text(
                      "Belum Punya Akun?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
