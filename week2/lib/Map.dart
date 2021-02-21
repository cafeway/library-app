import 'package:flutter/material.dart';
import 'package:rsa/constants.dart';

class Map extends StatefulWidget {
  static String id = 'Map';
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(12, 21, 52, 1),
          title: Text('RSA Library'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/map.png'),
                  fit: BoxFit.fill,
                )
            ),
          ),
        ),
      ),
    );
  }
}
