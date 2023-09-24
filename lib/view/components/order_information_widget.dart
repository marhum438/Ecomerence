import 'package:flutter/material.dart';

class OrderInformationWidget extends StatelessWidget {
  var text, width, text1, image;
  OrderInformationWidget({this.text, this.width, this.text1, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text, style: TextStyle(color: Colors.grey[400])),
        SizedBox(
          width: width,
        ),
        // Container(height: 20, width:20,
        // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)),),
        Text(
          text1,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

