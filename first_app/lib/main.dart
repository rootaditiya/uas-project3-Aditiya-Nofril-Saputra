import 'package:first_app/pages/shop_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:first_app/pages/intro_page.dart'; // Make sure to import IntroPage if it's in a different file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro-page':(context) => const IntroPage(),
        '/login-page':(context) => LoginPage(),
        '/':(context) => HomePage(),
      },
    );
  }
}
