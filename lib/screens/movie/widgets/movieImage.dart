import 'package:flutter/material.dart';


  //Card Image Widget Method
class MovieImage extends StatelessWidget {
 final String imageUrl;
 
  const MovieImage({
    Key key,
    this.imageUrl,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
            imageUrl ??
                'https://thumbs.dreamstime.com/b/default-avatar-profile-trendy-style-social-media-user-icon-187599373.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

