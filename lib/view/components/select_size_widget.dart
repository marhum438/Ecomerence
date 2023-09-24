import 'package:flutter/material.dart';

class SelectSizeWidget extends StatelessWidget {
  var text,Color;
  SelectSizeWidget({this.text, this.Color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color),
          borderRadius: BorderRadius.circular(9)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      )),
    );
  }
}

