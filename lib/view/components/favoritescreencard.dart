import 'package:flutter/material.dart';

class FavoriteScreencard1 extends StatelessWidget {
  var image, text, text1, text2, text3, text4, text5, Color, color;
  FavoriteScreencard1({
    this.image,
    this.text,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.Color,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children:[ Padding(
            padding: const EdgeInsets.only(bottom:9.0,),
            child: Container(height: 220,
            width:160,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(image) ,fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12)),
               ),
          ),
              //  SizedBox(width:150),
              Positioned(
                right: 0,
                top: 0,
                child: 
             Icon(Icons.close,color: Colors.grey[400],)),
              Positioned(
                      right: -5,
                      bottom: -5,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(
                          Icons.shop,
                          size: 10,
                          color: Colors.white,
                        ),
                        maxRadius: 12,
                      )),
                
      ]),
        // SizedBox(height: 1,),
        Row(
          children: [
             for (int a = 0; a < 4; a++)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color,
                              size: 15,
                            ),
                          ],
                        ),
                      Icon(
                        Icons.star_outline,
                        color: color,
                        size: 15,
                      ),
                      Text(
                        (text5),
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      ),
                       

                      
          ],
        ),
          //  SizedBox(height: 1,),
         Text(
                        text,
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      ),
                        Text(text1,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                   SizedBox(height: 4,),
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
                    //  SizedBox(height: 1,),
                  Text(
                        text3,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                     
                     
        
      ],
    );

         }
}

