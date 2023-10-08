import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/dress_image_widget.dart';
import 'package:flutter_application_1/view/components/select_size_widget.dart';
import 'package:flutter_application_1/view/myprofile_screen.dart';

class ShortDressScreen extends StatelessWidget {
  const ShortDressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: (){
             Navigator.pop(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
            
          },child: Icon(Icons.arrow_back_ios)),
          title: Text(
            "Short Dress",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 400,
                      width: 280,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/v4MbkrAHcK.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 400,
                      width: 280,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFOHYJmA3CCSJ1L9zk0teHZ1jlkqWV8Mew7Q&usqp=CAU"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Row(children: [
                      Container(
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white,
                            border: Border.all(color: Colors.amber)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(color: Colors.black),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            height: 400,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(17.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                      child: Text("Select Size",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 22))),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                  SelectSizeWidget(
                                                          text: "XS",
                                                          Color:
                                                              Colors.grey[400]),
                                                  SelectSizeWidget(
                                                          text: "S",
                                                          Color:
                                                              Colors.grey[400]),
                                                  SelectSizeWidget(
                                                          text: "M",
                                                          Color:
                                                              Colors.grey[400]),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    //  crossAxisAlignment: CrossAxisAlignment.start,

                                                    children: [
                                                  SelectSizeWidget(
                                                        text: "X",
                                                        Color: Colors.grey[400],
                                                      ),
                                                  SelectSizeWidget(
                                                          text: "L",
                                                          Color:
                                                              Colors.grey[400]),
                                                  SelectSizeWidget(
                                                        text: "XL",
                                                        Color: Colors.grey[400],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 40,
                                                  ),
                                                  Divider(
                                                    color: Colors.grey[400],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("size info"),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 18,
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Divider(
                                                    color: Colors.grey[400],
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    height: 50,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)),
                                                    child: Center(
                                                      child: Text("Add to card",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down))
                            ],
                          ),
                        )),
                      ),
                    ]),
                    SizedBox(
                      width: 19,
                    ),
                    Row(children: [
                      Container(
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "black",
                                style: TextStyle(color: Colors.black),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_down))
                            ],
                          ),
                        )),
                      ),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Center(
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.grey[400],
                          child: Icon(
                            Icons.favorite_border,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12, bottom: 7),
                child: Row(
                  children: [
                    Text(
                      "H&M",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "19.19",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              //  SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, bottom: 7, top: 1),
                child: Text(
                  "short black dress",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ),
              // SizedBox(height: 9,),
              Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12, bottom: 7),
                child: Row(
                  children: [
                    for (int a = 0; a < 5; a++)
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    Text(
                      "(10)",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, bottom: 7, top: 10),
                child: Text(
                    "Short Dress in soft cotton jersay with decorative button down the front and a wide,fill-trimmed",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Divider(),

              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, bottom: 7, top: 10),
                child: Text("shopping info ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, bottom: 7, top: 10),
                child: Text(
                  "support ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("you can also like this:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Spacer(),
                    Text(
                      "12 terms",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //  custumimage(image:"https://i.pinimg.com/originals/99/21/90/992190eb332dd17be8a456976dafb76d.png",),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Dressimages(
                                height: 180.0,
                                width: 140.0,
                                image:
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtu42eiuNB_3avSjSXhb6PHAbo0KOic_ATs0P1mjJ8m5fm_rAdtzuEKKd0H-3HgFO_B4o&usqp=CAU",
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                        child: Text(
                                      "-20%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ))),
                              ),
                              Positioned(
                                right:-12,
                                bottom: -12,
                                child: CircleAvatar(maxRadius: 15,backgroundColor: Colors.white,child:Icon(Icons.favorite_border_outlined,size: 15,color: Colors.grey[500],)))
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              for (int a = 0; a < 5; a++)
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 17,
                                ),
                              Text(
                                "(10)",
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                          Text("Dorothy Perkins"),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Evening Dress",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                "15\$",
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "12\$",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                             Dressimages(
                              height: 180.0,
                              width: 140.0,
                              image:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSegefeMDv48tBxxvWWx5RbCOFY4HpCgu8oBQ&usqp=CAU",
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  height: 20,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                    "New",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ))),
                            ),
                             Positioned(
                                right:-12,
                                bottom: -12,
                                child: CircleAvatar(maxRadius: 15,backgroundColor: Colors.white,child:Icon(Icons.favorite_border_outlined,size: 15,color: Colors.grey[500],)))
                           
                          ]),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              for (int a = 0; a < 5; a++)
                                Icon(
                                  Icons.star_outline,
                                  color: Colors.grey[400],
                                  size: 17,
                                ),
                              Text(
                                "(0)",
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                          Text("Mango boy"),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "T-Shirt",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "15",
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                             Dressimages(
                              height: 180.0,
                              width: 140.0,
                              image:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTffEJcDOsaZuuC7Ab9RDw0y1qMvKy9xSkTMNKohYJ1ELVveP47muf7PnoUpLmAtY3mMUg&usqp=CAU",
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  height: 20,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                    "New",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ))),
                            ),
                             Positioned(
                                right:-12,
                                bottom: -12,
                                child: CircleAvatar(maxRadius: 15,backgroundColor: Colors.white,child:Icon(Icons.favorite_border_outlined,size: 15,color: Colors.grey[500],)))
                           
                          ]),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              for (int a = 0; a < 5; a++)
                                Icon(
                                  Icons.star_outline,
                                  color: Colors.grey[400],
                                  size: 17,
                                ),
                              Text(
                                "(0)",
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                          Text("Mango girl"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "T-Shirt",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "15",
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //  custumimage(image: "https://5.imimg.com/data5/QC/KO/ID/ANDROID-46837871/product-jpeg-500x500.jpg",),

              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text("ADD To Card",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
