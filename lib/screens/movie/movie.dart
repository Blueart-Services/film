import 'package:flutter/material.dart';

import '../screens.dart';
import '../../util/util.dart';
import '../../models/movie/movie.dart';

//List
final List<Movie> movieList = Movie.getMovies();

class FilmApp extends StatefulWidget {
  @override
  _FilmAppState createState() => _FilmAppState();
}

class _FilmAppState extends State<FilmApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        elevation: 0.0,
        title: Card(
          elevation: 8.0,
          color: wColor,
          margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
          child: Text(
            "Movie Rating Application",
            style: txtHeading,
          ),
        ),
        centerTitle: true,
        backgroundColor: wColor,
      ),
      backgroundColor: bgColor,
      body: ListView.builder(
          padding: EdgeInsets.only(top: 5.0),
          itemCount: movieList.length,
          itemBuilder: (context, int index) {
            return Stack(
              children: [
                //Movie Card Widget
                MovieCard(
                  movie: movieList[index],
                ),
                //Movie Image Widget
                Positioned(
                  top: 15.0,
                  child: MovieImage(
                    imageUrl: movieList[index].images.first,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
