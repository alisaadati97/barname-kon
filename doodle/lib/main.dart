import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String usernamefield = "";
  String passwordfield = "";

  final logo = Image.asset(
    "assets/doodle.png",
    height: 150,
    width: 220,
  );

  @override
  Widget build(BuildContext context) {
    final username = TextFormField(
      autofocus: false,
      onChanged: (String value) {
        usernamefield = value;
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      onChanged: (String value) {
        passwordfield = value;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            logo,
            SizedBox(
              height: 50,
            ),
            username,
            SizedBox(
              height: 20,
            ),
            password,
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: TextButton(
                onPressed: () {
                  print(usernamefield);
                  print(passwordfield);
                },
                child: Text("log in"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
