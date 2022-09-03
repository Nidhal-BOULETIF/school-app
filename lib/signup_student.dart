// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SignUpStudentScreen extends StatefulWidget {
  const SignUpStudentScreen({Key? key}) : super(key: key);

  @override
  _SignUpStudentScreenState createState() => _SignUpStudentScreenState();
}

class _SignUpStudentScreenState extends State<SignUpStudentScreen> {
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
        title: const Text("Student SignUp Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Center(
                child: Text(
                  'Student Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input field',
                    hintText: 'Input field'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input field',
                    hintText: 'Input field'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input field',
                    hintText: 'Input field'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input field',
                    hintText: 'Input field'),
              ),
            ),
            Container(
              height: 40,
              child: FlatButton(
                color: const Color.fromARGB(227, 255, 68, 68),
                textColor: Colors.white,
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  // Navigate to the Login Screen
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpStudentScreen()));
                },
              ),
            ),
            const SizedBox(height: 130),
          ],
        ),
      ),
    );
  }
}
