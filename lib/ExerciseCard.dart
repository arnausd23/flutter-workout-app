import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ExerciseDetailPage.dart';
import 'models/Exercise.dart';

class ExerciseCard extends StatelessWidget {
  final ExerciseItem item;

  ExerciseCard({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF20221E),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFF252623),
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExerciseDetailPage(item: this.item)),
          ),
          child: Center(
            child: Text(this.item.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold)),
          ),
        ));
  }
}
