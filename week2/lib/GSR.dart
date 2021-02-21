import 'package:flutter/material.dart';
import 'package:rsa/constants.dart';

class GSR extends StatefulWidget {
  static String id = 'GSR';

  @override
  _GSRState createState() => _GSRState();
}

class _GSRState extends State<GSR> {
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
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Kcolorb),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, right: 15, left: 15, bottom: 65),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Card(
                            color: Kcolorb.withOpacity(0.5),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20, top: 30),
                                  child: Card(
                                    color: Colors.white,
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
      ),
    );
  }
}
