// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 245, 245, 245),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate to the Login Screen
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(227, 255, 68, 68),
        title: const Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter valid Username'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(
              height: 40,
              child: FlatButton(
                color: const Color.fromARGB(227, 255, 68, 68),
                textColor: Colors.white,
                child: const Text(
                  'LogIn',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  // Navigate to the Login Screen
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
            const SizedBox(height: 130),
            const Text(
              'New User? Create Account',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              child: FlatButton(
                color: const Color.fromARGB(227, 255, 68, 68),
                textColor: Colors.white,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  // Navigate to the Login Screen
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
