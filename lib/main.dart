import 'package:flutter/material.dart';
import 'package:ngiklan/splash.dart';
import 'package:ngiklan/login.dart';
import 'package:ngiklan/home.dart';
import 'package:ngiklan/intro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';


var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/login": (BuildContext context) => LoginScreen(), "splash": (BuildContext context) => SplashScreen()
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
      title: "Ngiklan",
      theme:
      ThemeData(primaryColor: Colors.blue, accentColor: Colors.white,  fontFamily: 'Raleway' ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      navigatorKey: NavigationService().globalKey,
      routes: routes));
}