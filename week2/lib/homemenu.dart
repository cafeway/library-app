import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rsa/GSR.dart';
import 'package:rsa/GWT.dart';
import 'package:rsa/PC.dart';
import 'package:rsa/constants.dart';
import 'package:rsa/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rsa/Map.dart';

class HomeMenu extends StatefulWidget {
  static String id = 'HomeMenu';
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage( 
          image: AssetImage('images/DSC_5647.JPG'),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: 140,
                  child: Image.asset(
                    'images/logo2.png',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Center(
                  child: Text(
                'RSA',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 35, color: Kcolorb),
              )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top:25,right: 15, left: 15, bottom: 65),
                child: Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Card(
                          color: Kcolorb
                              .withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                              topLeft: Radius.circular(6),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 30),
                                child: GestureDetector(
                                  onTap: () {Navigator.pushNamed(context, ComputerLab.id);
                                  },
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Text(
                                        'Reserve - Library Computer Lab',
                                        style: TextStyle(
                                            color: Kcolorb,
                                            fontSize: 18),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, GSR.id);
                                  },
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Text(
                                              'Reserve - A Group Study Room',
                                              style: TextStyle(
                                                  color: Kcolorb,
                                                  fontSize: 18))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, GWT.id);
                                  },
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Text(
                                              'Reserve - A Group Work Table',
                                              style: TextStyle(
                                                  color: Kcolorb,
                                                  fontSize: 18))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                  },
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Text(
                                              'Reserve - Learning Centre',
                                              style: TextStyle(
                                                  color: Kcolorb,
                                                  fontSize: 18))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, bottom: 30),
                                child: GestureDetector(
                                 onTap: (){
                                   Navigator.pushNamed(context, Map.id);
                                 },
                                  child: Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Text('Library Map',
                                              style: TextStyle(
                                                  color: Kcolorb,
                                                  fontSize: 18))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
