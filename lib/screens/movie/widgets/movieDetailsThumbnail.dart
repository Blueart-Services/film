import 'package:flutter/material.dart';

import '../../../util/util.dart';

//Thumbnail
class MovieDetailsThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailsThumbnail({
    Key key,
    this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    thumbnail,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(
              Icons.play_circle_outline,
              size: 100,
              color: wColor.withOpacity(0.65),
            ),
          ],
        ),
        //Gradient
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                wColor,
                bgColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: 80,
        ),
      ],
    );
  }
}