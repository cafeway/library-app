import 'package:flutter/material.dart';
import 'package:rsa/signin.dart';
import 'package:rsa/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rsa/homemenu.dart';


class SignUp extends StatefulWidget {
  static String id = 'SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  String email;
  String username;
  String password;
  String confirmPassword;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Kcolorb,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              //elevation: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Image.asset(
                    'images/logo.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignIn.id);
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Container(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Kcolorb,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        onChanged: (value) {
                          username = value;
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Kcolorb),
                        decoration:
                            KTextInputDecoration.copyWith(hintText: 'Username'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(

                        onChanged: (value) {
                          email = value;
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Kcolorb),
                        decoration:
                            KTextInputDecoration.copyWith(hintText: 'Email'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        onChanged: (value) {
                          password = value;
                        },
                        textAlign: TextAlign.center,
                        obscureText: true,
                        style: TextStyle(color: Kcolorb),
                        decoration: KTextInputDecoration.copyWith(
                            hintText: ' Password'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        onChanged: (value) {
                          confirmPassword = value;
                        },
                        textAlign: TextAlign.center,
                        obscureText: true,
                        style: TextStyle(color: Kcolorb),
                        decoration: KTextInputDecoration.copyWith(
                            hintText: ' Confirm Password'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                try{
                final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                if (newUser!=null){
                Navigator.pushNamed(context, HomeMenu.id);
                }
                } catch (e){print(e);}},
              //TODO alerdialog
              child: Padding(
                padding: const EdgeInsets.only(left: 110, right: 110),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 40,
                  child: Center(
                      child: Text(
                    'Register',
                    style: TextStyle(color: Kcolorb, fontSize: 14),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Text(
                      'If you already have an account',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context) => new SignIn(),
                          ),
                        );
                      },
                      child: Text(
                        '| Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
