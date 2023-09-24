import 'package:flutter/material.dart';

class FavoriteContainer extends StatelessWidget {
  var text;
  FavoriteContainer({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(19)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}

