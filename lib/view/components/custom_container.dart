import 'package:flutter/material.dart';

class CustomContainor extends StatelessWidget {
  var size;
  CustomContainor({this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: size,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
    );
  }
}

