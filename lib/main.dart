import 'dart:ui';

import 'package:flutter/material.dart';

import 'ExerciseListPage.dart';
import 'models/Exercise.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: Column(
        children: <Widget>[
          HomePageTitle(day: 'Pulling', color: Colors.orange),
          HomePageTitle(day: 'Pushing', color: Colors.green),
          HomePageTitle(day: 'Legs', color: Colors.amber),
        ],
      ),
    ));
  }
}

class HomePageTitle extends StatelessWidget {
  HomePageTitle({Key key, this.color, this.day}) : super(key: key);

  final Color color;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ExercisesListPage(items: exerciseItems[day])),
      ),
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/$day.jpeg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Text(
              this.day,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
          )),
    ));
  }
}
