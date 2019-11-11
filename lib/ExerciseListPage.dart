import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rutinas_app/models/Palette.dart';

import 'ExerciseCard.dart';
import 'models/Exercise.dart';

class ExercisesListPage extends StatelessWidget {
  final List<ExerciseItem> items;

  ExercisesListPage({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.listPageBackground,
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ExerciseCard(item: item);
          },
        ),
      ),
    );
  }
}
