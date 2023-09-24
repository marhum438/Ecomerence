import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/dress_image_widget.dart';
import 'package:flutter_application_1/view/review&rate_screen.dart';


class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: InkWell(onTap:(){
           Navigator.pop(context, MaterialPageRoute(builder: (context)=>RatingReview()));
            
        },child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Rating and Reviews",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "8 Reveiws",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.check_box, color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text("with photo",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children:[ Container(
                      height: 410,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kim Shine",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                for (int a = 0; a < 4; a++)
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 17,
                                  ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.grey[400],
                                  size: 17,
                                ),
                                Spacer(),
                                Text(
                                  "Augest,14,2019",
                                  style: TextStyle(color: Colors.grey[400]),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                "I love this dress so muuch as soon as I\ntried it on it knew I had to buy it in\nanother color. I an 5`3 about 150bs and\nI carry all mu weight in my upper body.\nWhen I put It on I felt like it thinned me.\nput and I got so many compliment"),
                            SizedBox(
                              height: 15,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Dressimages(
                                    height: 150,
                                    width: 120,
                                    image:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtu42eiuNB_3avSjSXhb6PHAbo0KOic_ATs0P1mjJ8m5fm_rAdtzuEKKd0H-3HgFO_B4o&usqp=CAU",
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Dressimages(
                                    height: 150,
                                    width: 120,
                                    image:
                                        "data:image/jpeg;base64,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",
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Dressimages(
                                    height: 150,
                                    width: 120,
                                    image:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTffEJcDOsaZuuC7Ab9RDw0y1qMvKy9xSkTMNKohYJ1ELVveP47muf7PnoUpLmAtY3mMUg&usqp=CAU",
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Helpfull",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                Icon(Icons.thumb_up_sharp,
                                    size: 16, color: Colors.grey[400]),
                              ],
                            ),
                          ],
                        ),
                      )),
                       Positioned(
                       left: -15,
                       top: -15,

                        
                        child: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),))
           
            ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // MaterialButton(
                  //   onPressed: () {
                  //     showModalBottomSheet(
                  //         context: context,
                  //         builder: (BuildContext context) {
                  //           return SingleChildScrollView(
                  //             child: Container(
                  //                 child: Padding(
                  //               padding: const EdgeInsets.all(18.0),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Center(
                  //                       child: Text(
                  //                     "What is your rate",
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 20),
                  //                   )),
                  //                   SizedBox(
                  //                     height: 12,
                  //                   ),
                  //                   Row(
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.spaceEvenly,
                  //                     children: [
                  //                       for (int i = 0; i < 5; i++)
                  //                         Center(
                  //                             child: Icon(
                  //                           Icons.star_outline_outlined,
                  //                           size: 35,
                  //                           color: Colors.grey[400],
                  //                         )),
                  //                     ],
                  //                   ),
                  //                   SizedBox(
                  //                     height: 20,
                  //                   ),
                  //                   Center(
                  //                       child: Text(
                  //                     "Please share your opinion\n      about the project",
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 18),
                  //                   )),
                  //                   SizedBox(
                  //                     height: 12,
                  //                   ),
                  //                   Container(
                  //                     height: 150,
                  //                     width: double.infinity,
                  //                     decoration:
                  //                         BoxDecoration(color: Colors.white),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(10.0),
                  //                       child: Text(
                  //                         "your review",
                  //                         style: TextStyle(
                  //                             color: Colors.grey[400]),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 50,
                  //                   ),
                  //                   Container(
                  //                     height: 100,
                  //                     width: 105,
                  //                     decoration: BoxDecoration(
                  //                       color: Colors.grey[100],
                  //                     ),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(10.0),
                  //                       child: Column(
                  //                         children: [
                  //                           CircleAvatar(
                  //                             maxRadius: 25,
                  //                             backgroundImage: NetworkImage(
                  //                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsdxmBfF8Ot0b0PrMutxqDPCa9a8JCoPVt1Q&usqp=CAU"),
                  //                           ),
                  //                           SizedBox(
                  //                             height: 10,
                  //                           ),
                  //                           Text("Add your photo",
                  //                               style: TextStyle(
                  //                                   fontWeight: FontWeight.bold,
                  //                                   fontSize: 12)),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 40,
                  //                   ),
                  //                   //  Spacer(),
                  //                   Container(
                  //                     height: 50,
                  //                     width: double.infinity,
                  //                     decoration: BoxDecoration(
                  //                         color: const Color.fromARGB(
                  //                             255, 255, 119, 7),
                  //                         borderRadius:
                  //                             BorderRadius.circular(25)),
                  //                     child: Center(
                  //                       child: Text("Saved Password",
                  //                           style: TextStyle(
                  //                               color: Colors.white,
                  //                               fontSize: 16)),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             )),
                  //           );
                  //         });
                  //   },
                  //   child: Center(
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(5.0),
                  //       child: Row(
                  //         children: [
                  //           Icon(Icons.edit, color: Colors.white),
                  //           SizedBox(
                  //             width: 4,
                  //           ),
                  //           Text("Write a reveiw",
                  //               style: TextStyle(
                  //                   color: Colors.white, fontSize: 12)),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  //   color: const Color.fromARGB(255, 255, 119, 7),
                  //   height: 20,
                  //   minWidth: 100,
                  //   // shape: Border.fromBorderSide(BorderSide(width: 5,)),
                  // ),
                  MaterialButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: Text(
                                      "What is your rate",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          Center(
                                              child: Icon(
                                            Icons.star,
                                            size: 35,
                                            color: Colors.yellow,
                                          )),
                                        Icon(
                                          Icons.star_outline_outlined,
                                          size: 35,
                                          color: Colors.grey[400],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Text(
                                      "Please share your opinion\n      about the project",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                        height: 130,
                                        width: double.infinity,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.all(11.0),
                                          child: Text(
                                              "I am supper happy with these. I have Never bought\njean online before i did not think they would\neven fit but they turns out they look pretty\nperfectly i got a size 28 i am `5`6 and weight\nabout 127lb. they are tight\nnot suffocating......"),
                                        )),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 105,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGiNN_JsLKV5gvEtQ4z6_OI2Sw3B4krUBmfZmvXO_qQMAYgd76gwQX4ZWOI7wUjc2oWa4&usqp=CAU"))),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Container(
                                              height: 100,
                                              width: 105,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBe2N7KaKzNU5SA97qHZQyw3bKYFnESklNKh-bp3QaXXp3F4zOhhRRsvaWyj7SRW0i6jY&usqp=CAU"))),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Container(
                                              height: 100,
                                              width: 105,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      maxRadius: 25,
                                                      backgroundImage: NetworkImage(
                                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsdxmBfF8Ot0b0PrMutxqDPCa9a8JCoPVt1Q&usqp=CAU"),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Add your photo",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 9)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    //  Spacer(),
                                    Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 255, 119, 7),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Center(
                                        child: Text("Send Review",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            );
                          });
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(Icons.edit, color: Colors.white),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Write a reveiw",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    color: const Color.fromARGB(255, 255, 119, 7),
                    height: 20,
                    minWidth: 100,
                    // shape: Border.fromBorderSide(BorderSide(width: 5,)),
                  ),
                //   Container(
                //     height: 35,
                //     width: 120,
                //     decoration: BoxDecoration(
                //         color: Colors.amber[900],
                //         borderRadius: BorderRadius.circular(25)),
                //     child: Center(
                //       child: Padding(
                //         padding: const EdgeInsets.all(5.0),
                //         child: Row(
                //           children: [
                //             Icon(Icons.edit, color: Colors.white),
                //             SizedBox(
                //               width: 4,
                //             ),
                //             Text("Write a reveiw",
                //                 style: TextStyle(
                //                     color: Colors.white, fontSize: 12)),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                 ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
