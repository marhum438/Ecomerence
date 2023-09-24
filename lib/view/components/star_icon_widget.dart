import 'package:flutter/material.dart';

class StarIconWidget extends StatelessWidget {
  var length;
  StarIconWidget({this.length});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int a = 0; a < length; a++)
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
    ]);
  }
}
