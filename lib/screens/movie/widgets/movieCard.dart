import 'package:flutter/material.dart';

import '../../screens.dart';
import '../../../util/util.dart';
import '../../../models/movie/movie.dart';

//Card Widget Method
class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({
    Key key,
    this.movie,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          left: 60.0,
          right: 12.0,
        ),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          elevation: 8.0,
          color: wColor,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 54.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Block - Title / Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Title
                      Flexible(
                        child: Text(
                          movie.title,
                          //overflow: TextOverflow.fade,
                          style: txtBody,
                        ),
                      ),
                      //Rating
                      Text(
                        movie.imdbRating.toLowerCase() == "n/a"
                            ? ""
                            : "Rated: " + movie.imdbRating + "/10",
                        // overflow: TextOverflow.clip,
                        style: txtBody,
                      ),
                    ],
                  ),
                  //Block - Released / Runtime / Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Released
                      Text(
                        movie.released.toLowerCase() == "n/a"
                            ? ""
                            : movie.released,
                        style: subTxt,
                      ),
                      //Runtime
                      Text(
                        movie.runtime.toLowerCase() == "n/a"
                            ? ""
                            : movie.runtime,
                        style: subTxt,
                      ),
                      //Rated
                      Text(
                        movie.rated.toLowerCase() == "n/a" ? "" : movie.rated,
                        style: subTxt,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieListViewDetail(
              movie: movie,
            ),
          ),
        ),
      },
    );
  }
}
