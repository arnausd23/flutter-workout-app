import 'package:flutter/cupertino.dart';

class CustomTitleText extends StatelessWidget {
  final String title;
  final double size;

  CustomTitleText({Key key, @required this.title, @required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.bold));
  }
}