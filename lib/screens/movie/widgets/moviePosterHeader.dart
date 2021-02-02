import 'package:flutter/material.dart';

import '../../../util/util.dart';
import '../../../models/movie/movie.dart';

//Details With Poster
class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeaderWithPoster({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          //Movie Poster
          MoviePoster(poster: movie.images[0].toString()),
          //Space
          SizedBox(width: 12),
          //Movie Details Header
          Expanded(
            child: MovieDetailHeader(movie: movie),
          ),
        ],
      ),
    );
  }
}

//Movie Detail Header
class MovieDetailHeader extends StatelessWidget {
  final Movie movie;
  const MovieDetailHeader({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //year - genre
        Text(
          movie.year.toUpperCase() + " . " + movie.genre.toUpperCase(),
          //textAlign: TextAlign.center,
          style: subTxt.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        //Title
        Text(
          movie.title,
          // textAlign: TextAlign.center,
          style: txtHeading.copyWith(
            //fontSize: 20,
            color: Colors.amber,
            //fontWeight: FontWeight.bold
          ),
        ),
        //Description
        Text.rich(
          TextSpan(style: txtBody, children: [
            //Plot
            TextSpan(
              text: movie.plot,
            ),
            //More
            TextSpan(
              text: " Read More...",
              style: subTxt.copyWith(
                color: Colors.amber,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

//Movie Poster
class MoviePoster extends StatelessWidget {
  final String poster;
  const MoviePoster({
    Key key,
    this.poster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.all(Radius.circular(10.0));
    return Container(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(poster),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}