import 'package:flutter/material.dart';

class FavoritScreenCard extends StatelessWidget {
  var image, text, text1, text2, text3, text4, text5, Color;
  FavoritScreenCard({
    this.image,
    this.text,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.Color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12)),
            // child: Image.network(
            // image,//  height: 900,
            //   // width: 105,
            // ),
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
                  Row(
                    children: [
                      Text(
                        text,
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      ),
                      Spacer(),
                      Icon(Icons.close, color: Colors.grey[400], size: 18),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(text1,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text("Color:",
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12)),
                      Text(
                        text2,
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Size:",
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12)),
                      Text(
                        text4,
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        text3,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      // SizedBox(width: 10,),
                      // Text(text5,style: TextStyle(color: Colors.red),),
                      Spacer(),
                      for (int a = 0; a < 4; a++)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color,
                              size: 17,
                            ),
                          ],
                        ),
                      Icon(
                        Icons.star_outline,
                        color: Colors.grey,
                        size: 17,
                      ),
                      Text(
                        (text5),
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
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
