import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'FileHandler.dart';
import 'UI/widgets/CustomText.dart';
import 'models/Exercise.dart';

class ExerciseDetailPage extends StatefulWidget {
  final ExerciseItem item;

  ExerciseDetailPage({Key key, @required this.item}) : super(key: key);

  @override
  _ExerciseDetailPageState createState() => _ExerciseDetailPageState();
}

class _ExerciseDetailPageState extends State<ExerciseDetailPage> {
  final FileHandler storage = FileHandler();
  int exerciseWeight = 0;

  @override
  void initState() {
    super.initState();
    this.storage.readKeyValue(widget.item.title).then((value) {
      setState(() {
        this.exerciseWeight = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (widget.item.image.isNotEmpty)
            Image(
                width: 500, height: 500, image: AssetImage(widget.item.image)),
          CustomTitleText(title: widget.item.title, size: 44),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Text('$exerciseWeight kg', style: TextStyle(fontSize: 40)),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Center(
            child: Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IncrementDecrementButton(
                      function: addNumbers,
                      backgroundColor: Colors.green,
                      icon: Icons.add),
                  IncrementDecrementButton(
                      function: subtractNumbers,
                      backgroundColor: Colors.redAccent,
                      icon: IconData(0xe15b, fontFamily: 'MaterialIcons')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void subtractNumbers() {
    setState(() {
      exerciseWeight = exerciseWeight - 1;
    });
    this.saveExerciseData();
  }

  void addNumbers() {
    setState(() {
      exerciseWeight = exerciseWeight + 1;
    });
    this.saveExerciseData();
  }

  void saveExerciseData() {
    this.storage.writeKeyValue(widget.item.title, this.exerciseWeight);
  }
}

class IncrementDecrementButton extends StatelessWidget {
  final Function function;
  final Color backgroundColor;
  final IconData icon;

  IncrementDecrementButton(
      {Key key,
      @required this.function,
      @required this.backgroundColor,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: 50,
        color: Colors.white,
        onPressed: function,
      ),
    );
  }
}
