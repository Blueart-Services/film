import 'package:flutter/material.dart';

import 'util.dart';

//Detail Field
class MovieField extends StatelessWidget {
  final String field;
  final String value;
  const MovieField({
    Key key,
    this.field,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      //Field
      Text(
        "$field : ",
        style: txtHeading,
      ),
      //Space
      SizedBox(width: 5),
      //Value
      Expanded(
        child: Text(
          value,
          style: txtBody,
        ),
      ),
    ]);
  }
}