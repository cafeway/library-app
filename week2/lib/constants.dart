import 'package:flutter/material.dart';


const Kcolorb = const Color.fromRGBO(0, 12, 58, 1);

const KTextInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(10),
  hintText: 'Email',
  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
  filled: true,
  isDense: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  ),
);
