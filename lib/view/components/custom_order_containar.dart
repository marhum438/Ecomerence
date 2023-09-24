import 'package:flutter/material.dart';

class   CustomOrderContainar extends StatelessWidget {
  var Color, text, Colors, border;
    CustomOrderContainar({this.Color, this.text, this.Colors, this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color,
          border: border),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors),
      )),
    );
  }
}
