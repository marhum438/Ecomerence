import 'package:flutter/material.dart';

class   Dressimages extends StatelessWidget {
  var image, height, width;
    Dressimages({this.image, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
    );
  }
}

