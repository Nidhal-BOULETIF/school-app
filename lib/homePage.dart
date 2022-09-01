// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';

class Course {
  final String teacherName;
  final String courseTitle;
  final String courseContent;

  Course(
      {this.teacherName = '', this.courseTitle = '', this.courseContent = ''});
}

final List<Course> _courses = <Course>[
  Course(
      teacherName: "james joe",
      courseTitle: "C++ Course",
      courseContent:
          "Lorem Ipsum has Lorem Ipsum hasLorem Ipsum hasLorem Ipsum has"),
  Course(
      teacherName: "micheal",
      courseTitle: "HTML Course",
      courseContent:
          "Lorem Ipsum has  Lorem Ipsum hasLorem Ipsum hasLorem Ipsum has"),
  Course(
      teacherName: "Jason",
      courseTitle: "C sharp Course",
      courseContent:
          "Lorem Ipsum has  Lorem Ipsum hasLorem Ipsum hasLorem Ipsum has"),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage> {
  final double coverHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          buildTop(),
          buildButtons(),
          Container(
            alignment: Alignment.center,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _courses.length,
              itemExtent: 220,
              itemBuilder: _list_temBuilder,
            ),
          )
        ],
      ),
    );
  }

  // Top Section Builder
  Widget buildTop() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: coverHeight - 50,
          child: buildLogoImage(),
        )
      ],
    );
  }

  // Cover image builder
  Widget buildCoverImage() => Container(
        child: Image.network(
          'https://images.unsplash.com/photo-1530538987395-032d1800fdd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  // Logo image builder
  Widget buildLogoImage() => Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://play-lh.googleusercontent.com/0H0-y6kxTs-n1VgKRhmy69FfQfksfeX_Oy5MfY_JfUWUwvC2oqbmab2-yIce4V4ssA'))));

  // LogIn And About button Builder
  Widget buildButtons() => Center(
          child: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
          child: FlatButton(
            child: const Text(
              'About',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 60),
          child: FlatButton(
            color: const Color.fromARGB(227, 255, 68, 68),
            textColor: Colors.white,
            onPressed: () {},
            child: const Text(
              'LogIn',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ]));

  // Liste of Courses along with its Teacher list Builder
  Widget _list_temBuilder(BuildContext context, int index) {
    return Card(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _courses[index].courseTitle,
                      style: const TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _courses[index].courseContent,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      color: const Color.fromARGB(227, 255, 68, 68),
                      textColor: Colors.white,
                      onPressed: () {},
                      child: const Text(
                        'More',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHGL4o7KzELR8IVqawK7ewODhgXStzb9eZNYwkVCVHkEcGZY_dHMy9tS1EfYaOrbHjFjY&usqp=CAU',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _courses[index].teacherName,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
