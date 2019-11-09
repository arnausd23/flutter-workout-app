import 'package:flutter/material.dart';

final Decoration boxDecoration = BoxDecoration(
  color: Color(0xFF43417d),
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(8.0),
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.black12,
      blurRadius: 10.0,
      offset: Offset(0.0, 10.0),
    ),
  ],
);