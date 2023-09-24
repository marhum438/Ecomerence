import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/class1.dart';

class FavoriteScreen1 extends StatefulWidget {
  const FavoriteScreen1({super.key});

  @override
  State<FavoriteScreen1> createState() => _FavoriteScreen1State();
}

class _FavoriteScreen1State extends State<FavoriteScreen1> {
  @override
  void initState() {
    getitem();
    super.initState();
  }

  var itemdata1;
  getitem() async {
    var data = await homeclass.getitem();
    if (data != null) {
      itemdata1 = data;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text(
              "Favorite Screen",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        body: itemdata1 == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: itemdata1.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 216, 216)),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(itemdata1[i]
                                                    ["image"]
                                                .toString()),
                                            fit: BoxFit.cover)),
                                    // height: 180,
                                    // width: 120,
                                    // child: Image.network(
                                    // (itemdata[i]["image"].toString()),
                                    //  height: 900,
                                    // width: 105,
                                    // ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Super Hot",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ))),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                          height: 20,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.image,
                                                size: 12,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "35",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 8),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                            (itemdata1[i]["timetext"]
                                                .toString()),
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 212, 206, 206),
                                                fontSize: 10)),
                                        Spacer(),
                                        // SizedBox(
                                        //   width: 55,
                                        // ),
                                        Container(
                                          height: 28,
                                          //width: 65,
                                          decoration: BoxDecoration(
                                              // color:(itemdata[i]["containarcolo"]),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Center(
                                                    child: Text(
                                                  "TITANIUM",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                )),
                                                // SizedBox(
                                                //   width: 20,
                                                // ),
                                                Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.yellow[200],
                                                    size: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.check_box,
                                          size: 15,
                                          color: Colors.green,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      //  crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "PKR",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          (itemdata1[i]["Croretext"].toString()),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "DHA Phase 6,DHA Defence",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "House for Sale",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        box1(
                                            (Icons.bed),
                                            (itemdata1[i]["roomtext"]
                                                .toString())),
                                        Spacer(),
                                        box1(
                                            (Icons.shower),
                                            (itemdata1[i]["showertext"]
                                                .toString())),
                                        Spacer(),
                                        box1(
                                            (Icons.crop_square),
                                            (itemdata1[i]["crop_square text"]
                                                .toString())),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Spacer(),
                                        IconButton(
                                            onPressed: () {
                                              //  await homeclass.saveitem(itemdata[i]);
                                              //  await  getitem();
                                            },
                                            icon: Icon(Icons.favorite_border))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                                child: Text(
                                              "SMS",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                border: Border.all(
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.phone,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Call",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Container(
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                border: Border.all(
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 22,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.white),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.phone,
                                                          color: Colors.white,
                                                          size: 12,
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }));

//             body: ListView.builder(itemCount: itemdata.length,
//         itemBuilder: (context, i) {
//           return

//            ListTile(
//              title: Container(
//                   height: 220,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Color.fromARGB(255, 218, 216, 216)),
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 5.0),
//                           child: Stack(
//                             children: [

//                              Container(
//                                decoration:BoxDecoration(image: DecorationImage(image: NetworkImage(itemdata[i]["image"].toString()),fit: BoxFit.cover)
//                                 ),
//                                 // height: 180,
//                                 // // width: 120,
//                                 // child: Image.network(
//                                 // (list[i]["image"].toString()),
//                                 //  //  height: 900,
//                                 //   // width: 105,
//                                 // ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Container(
//                                     height: 20,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                         color: Colors.red,
//                                         borderRadius: BorderRadius.circular(5)),
//                                     child: Center(
//                                         child: Text(
//                                       "Super Hot",
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 10),
//                                     ))),
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 left: 0,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(5.0),
//                                   child: Container(
//                                       height: 20,
//                                       width: 35,
//                                       decoration: BoxDecoration(
//                                         color: Colors.black,
//                                         borderRadius: BorderRadius.circular(5),
//                                       ),
//                                       child: Row(
//                                         children: [
//                                           Icon(
//                                             Icons.image,
//                                             size: 12,
//                                             color: Colors.white,
//                                           ),
//                                           SizedBox(
//                                             width: 8,
//                                           ),
//                                           Text(
//                                             "35",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 12),
//                                           ),
//                                         ],
//                                       )),
//                                 ),
//                               )
//                             ],
//                           ),

//                         ),
//                       ),

//                        Expanded(
//                         flex: 2,
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 8.0, right: 8),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Column(
//                               // mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text((itemdata[i]["timetext"].toString()),
//                                         style: TextStyle(
//                                             color: Color.fromARGB(
//                                                 255, 212, 206, 206),
//                                             fontSize: 10)),
//                                     Spacer(),
//                                     // SizedBox(
//                                     //   width: 55,
//                                     // ),
//                                     Container(
//                                       height: 28,
//                                       //width: 65,
//                                       decoration: BoxDecoration(

//                                           borderRadius: BorderRadius.circular(5)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Row(
//                                           children: [
//                                             Center(
//                                                 child: Text(
//                                               "TITANIUM",
//                                               style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 12),
//                                             )),
//                                             // SizedBox(
//                                             //   width: 20,
//                                             // ),
//                                             Center(
//                                               child: Icon(
//                                                 Icons.add,
//                                                 color: Colors.yellow[200],
//                                                 size: 10,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 5,
//                                     ),
//                                     Icon(
//                                       Icons.check_box,
//                                       size: 15,
//                                       color: Colors.green,
//                                     )
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Row(
//                                   // mainAxisAlignment: MainAxisAlignment.start,
//                                   //  crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "PKR",
//                                       textAlign: TextAlign.start,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     Text(
//                                       (itemdata[i]["Croretext"].toString()),
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                   ],
//                                 ),
//                                 Text(
//                                   "DHA Phase 6,DHA Defence",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold, fontSize: 14),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Text(
//                                   "House for Sale",
//                                   style:
//                                       TextStyle(color: Colors.grey, fontSize: 12),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   children: [
//                                     box1((Icons.bed), (itemdata[i]["roomtext"].toString())),
//                                     Spacer(),
//                                     box1((Icons.shower), (itemdata[i]["showertext"].toString())),
//                                     Spacer(),
//                                     box1((Icons.crop_square), (itemdata[i]["crop_square text"].toString())),
//                                     SizedBox(
//                                       width: 2,
//                                     ),
//                                     Spacer(),
//                                   IconButton(onPressed: (){

//                                   }, icon: Icon(Icons.favorite_border))
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Expanded(
//                                       child: Container(
//                                         height: 30,
//                                         decoration: BoxDecoration(
//                                             color: Colors.white,
//                                             border:
//                                                 Border.all(color: Colors.green),
//                                             borderRadius:
//                                                 BorderRadius.circular(5)),
//                                         child: Center(
//                                             child: Text(
//                                           "SMS",
//                                           style: TextStyle(color: Colors.green),
//                                         )),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 7,
//                                     ),
//                                     Expanded(
//                                       child: Container(
//                                         height: 30,
//                                         decoration: BoxDecoration(
//                                             color: Colors.green,
//                                             border:
//                                                 Border.all(color: Colors.green),
//                                             borderRadius:
//                                                 BorderRadius.circular(5)),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Icon(
//                                               Icons.phone,
//                                               color: Colors.white,
//                                             ),
//                                             Text(
//                                               "Call",
//                                               style:
//                                                   TextStyle(color: Colors.white),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 7,
//                                     ),
//                                     Expanded(
//                                       child: Container(
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                             color: Colors.green,
//                                             border:
//                                                 Border.all(color: Colors.green),
//                                             borderRadius:
//                                                 BorderRadius.circular(5),
//                                           ),
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Container(
//                                                 height: 20,
//                                                 width: 22,
//                                                 decoration: BoxDecoration(
//                                                     border: Border.all(
//                                                         color: Colors.white),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   children: [
//                                                     Icon(
//                                                       Icons.phone,
//                                                       color: Colors.white,
//                                                       size: 12,
//                                                     ),
//                                                   ],
//                                                 ),
//                                               )
//                                             ],
//                                           )),
//                                     )
//                                   ],
//                                 )

//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//            );

// }
//                     ));
//           // customContainer(
  }
}

Widget box1(var icon, var text) {
  return Row(
    children: [
      Icon(icon),
      SizedBox(
        width: 5,
      ),
      Text(text),
      SizedBox(
        width: 10,
      )
    ],
  );
}
