// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(227, 255, 68, 68),
          title: const Text('About Screen'),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(30, 60, 30, 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              const Text(
                'About',
                style: TextStyle(fontSize: 36),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              FlatButton(
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 25.0, color: Colors.red),
                ),
                onPressed: () {
                  // Navigate to the about screen
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
