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
                                  "data:image/jpeg;base64,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"),
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
                                height: 180,
                                width: 140,
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
                              height: 180,
                              width: 140,
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
                              height: 180,
                              width: 140,
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
