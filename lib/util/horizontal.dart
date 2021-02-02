import 'package:flutter/material.dart';

//Horizontal Line
class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 1.75,
      color: Colors.amber,
    );
  }
}