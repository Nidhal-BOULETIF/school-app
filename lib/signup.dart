// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'signup_student.dart';
import 'signup_teacher.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        title: const Text("SignUp Screen"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100),
              const Text(
                'Select an option below',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50),
              FlatButton(
                color: const Color.fromARGB(227, 255, 68, 68),
                textColor: Colors.white,
                child: const Text(
                  'Student',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUpStudentScreen()));
                },
              ),
              const SizedBox(height: 10),
              FlatButton(
                color: const Color.fromARGB(227, 255, 68, 68),
                textColor: Colors.white,
                child: const Text(
                  'Teacher',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  // Navigate to the Login Screen
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUpTeachertScreen()));
                },
              ),
              const SizedBox(height: 100),
              FlatButton(
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                onPressed: () {
                  // Navigate to the about screen
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
