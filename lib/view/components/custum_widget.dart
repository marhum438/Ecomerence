import 'package:flutter/material.dart';

class customwidget extends StatelessWidget {
  var text, icon, colors;
  customwidget({this.text, this.icon, this.colors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: colors,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          text,
          style: TextStyle(color: colors),
        ),
      ],
    );
  }
}

