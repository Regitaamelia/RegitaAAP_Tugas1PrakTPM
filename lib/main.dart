import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 150, 10, 0),
            ),
            Image.asset('assets/images/logo-flutter.png',
                width: 260, height: 80),
            _textField(),
            _ElevatedButton(context),
          ],
        ),
      ),
    );
  }
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    ],
  );
}

Widget _ElevatedButton(context) {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 16.0)),
      ElevatedButton(
        onPressed: () {}, // Respon ketika button ditekan
        child: Text("Login"),
      ),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/");
        }, // Respon ketika button ditekan
        child: Text("Forgot Password?"),
      ),
    ],
  );
}
