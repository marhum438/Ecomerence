import 'package:flutter/material.dart';

class TextFeildWidget extends StatelessWidget {
  var text, text1;
  TextFeildWidget({this.text, this.text1});

  @override
  Widget build(BuildContext context) {
    return   Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 8, bottom: 3),
                      child: Text(
                        text,
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                    Container(
                      height: 35,
                      //  margin: EdgeInsets.all(3),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            //     labelText: "NAME",

                            hintText:text1,
                            hintStyle: TextStyle(fontSize: 15,),
                            //  suffixIcon: Icon(Icons.check,color: Colors.grey,size: 15,),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                ),
              );
            
  }
}
