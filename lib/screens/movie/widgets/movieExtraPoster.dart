import 'package:flutter/material.dart';

import '../../../util/util.dart';


class MovieDetailExtraPoster extends StatelessWidget {
  final List<String> posters;
  const MovieDetailExtraPoster({
    Key key,
    this.posters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
  
      children: [
        SizedBox(height: 5,),
        //title
        Text(
          "More Movie Posters".toUpperCase(),
          style: subTxt.copyWith(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5,),
        //Poster
        Container(
          height: 172,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: posters.length,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: 8),
            itemBuilder: (BuildContext context, int index) =>ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                
                height: 125,
                width: MediaQuery.of(context).size.width/4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(posters[index]),
                    fit: BoxFit.cover,
                    ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
