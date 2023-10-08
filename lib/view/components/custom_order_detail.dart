import 'package:flutter/material.dart';

class CustomOrderDetail extends StatelessWidget {
  var image;
  CustomOrderDetail({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 100,
            child: Image.network(
              image, fit: BoxFit.cover,
              //  height: 900,
              // width: 105,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 5, bottom: 5, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pullover",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Mango", style: TextStyle(color: Colors.grey[400])),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Text("Color:", style: TextStyle(color: Colors.grey[400])),
                      Text(
                        " Gray",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Size:", style: TextStyle(color: Colors.grey[400])),
                      Text(
                        " L",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Unit:", style: TextStyle(color: Colors.grey[400])),
                      Text(
                        "1",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "51\$",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
