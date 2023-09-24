import 'package:flutter/material.dart';

class    CustomTile extends StatelessWidget {
  var text, text1;
     CustomTile({this.text, this.text1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    text1,
                    style: TextStyle(color: Colors.grey[400],fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
                size: 16,
              )
            ],
          ),
        ),
        SizedBox(height: 1,),
        Divider(),
      ],
    );
  }
}
