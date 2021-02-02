import 'package:flutter/material.dart';

import '../screens.dart';
import '../../util/util.dart';
import '../../models/movie/movie.dart';

class MovieListViewDetail extends StatelessWidget {
  //First Parameter
  final Movie movie;

  //Constructor
  MovieListViewDetail({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        elevation: 0.0,
        title: Card(
          elevation: 8.0,
          color: wColor,
          // margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
          child: Text(
            movie.title,
            textAlign: TextAlign.center,
            style: txtBody.copyWith(
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: wColor,
      ),
      backgroundColor: bgColor,
      body: ListView(
        children: [
          //Movie Thumbnail
          MovieDetailsThumbnail(
            thumbnail: movie.images[0],
          ),
          //Horizotal Line
          HorizontalLine(),
          //Movie Details with Poster
          MovieDetailsHeaderWithPoster(
            movie: movie,
          ),
          //Horizotal Line
          HorizontalLine(),
          //Movie Details with Cast
          MovieDetailCast(
            movie: movie,
          ),
          //Horizotal Line
          HorizontalLine(),
          //Posters
          MovieDetailExtraPoster(posters: movie.images,),
        ],
      ),
    );
  }
}
