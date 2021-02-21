import 'package:flutter/material.dart';
import 'package:rsa/GWT.dart';
import 'package:rsa/PC.dart';
import 'package:rsa/signin.dart';
import 'package:rsa/signup.dart';
import 'package:rsa/homemenu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rsa/forgotpassword.dart';
import 'package:rsa/Map.dart';
import 'package:rsa/GSR.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'rsa',
      initialRoute: SignUp.id,
      routes: {
        SignUp.id: (context) => SignUp(),
        SignIn.id: (context) => SignIn(),
        HomeMenu.id: (context) => HomeMenu(),
        ForgotPassword.id: (context) => ForgotPassword(),
        Map.id: (context) => Map(),
        ComputerLab.id: (context) => ComputerLab(),
        GWT.id: (context) => GWT(),
        GSR.id: (context) => GSR(),
      },
    );
  }
}
