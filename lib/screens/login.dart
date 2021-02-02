import 'package:belajaryukk/dashboard/configuration.dart';
import 'package:belajaryukk/screens/redirect.dart';
import 'package:belajaryukk/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
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
        body: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('images/background.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: Container(
      padding: EdgeInsets.only(top: 250, left: 30, right: 30),
      child: Column(
        children: [
          Text(
            "Login Ke Akun Anda",
            style: GoogleFonts.mcLaren(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text(
                  'Forget Password?',
                  style: TextStyle(color: primaryGreen),
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResetScreen())),
              )
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: primaryGreen,
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
                              MaterialPageRoute(
                                  builder: (context) => Redirect()));
                        });
                      }
                    }),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.grey[200],
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
        ],
      ),
    )));
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
