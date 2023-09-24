import 'package:flutter/material.dart';

class FavoriteScreenOption extends StatelessWidget {
  var icon, text;
  FavoriteScreenOption({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(text),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
