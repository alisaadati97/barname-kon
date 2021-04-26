import 'package:flutter/material.dart';
import "login.dart";
import "signup.dart";
import 'profile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/signup': (context) => SignupPage(),
      '/profile': (context) => ProfilePage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isloggedin = false;
  @override
  Widget build(BuildContext context) {
    if (isloggedin) {
      return ProfilePage();
    } else {
      return LoginPage();
    }
  }
}
