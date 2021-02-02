import 'package:flutter/material.dart';

import '../../../util/util.dart';
import '../../../models/movie/movie.dart';

//Movie Cast Details
class MovieDetailCast extends StatelessWidget {
  final Movie movie;
  const MovieDetailCast({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 3.0,
      ),
      child: Column(
        children: [
          //Cast
          MovieField(field: "Cast", value: movie.actors),
          //Director
          MovieField(field: "Directors", value: movie.director),
          //Awards
          MovieField(field: "Awards", value: movie.awards),
        ],
      ),
    );
  }
}