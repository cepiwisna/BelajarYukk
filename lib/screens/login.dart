import 'package:belajaryukk/screens/redirect.dart';
import 'package:belajaryukk/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'reset.dart';
import 'redirect.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Login'),
                onPressed: () {
                  if (emailController.text == '') {
                    showToast('Please Input Your Email');
                  } else if (passController.text == '') {
                    showToast('Please Input Your Password');
                  } else {
                    auth
                        .signInWithEmailAndPassword(
                            email: _email, password: _password)
                        .then((_) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Redirect()));
                    });
                  }
                }),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register'),
              onPressed: () {
                // auth
                //     .createUserWithEmailAndPassword(
                //         email: _email, password: _password)
                //     .then((_) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Register1()));
                // });
              },
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text('Forget Password?'),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResetScreen())),
              )
            ],
          )
        ],
      ),
    );
  }

  showToast(text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black12.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
