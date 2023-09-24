import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/class1.dart';

import 'favorite_screen1.dart';
import 'list.dart';


class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  var itemdata;
  void initState() {
    getitem();
    super.initState();
  }

  checkfav(name) {
    var isfind = false;
    if (itemdata != null) {
      for (var i = 0; i < itemdata.length; i++) {
        if (itemdata[i]["name"] == name) {
          isfind = true;
          break;
        }
      }
    }
    return isfind;
  }

  getitem() async {
    var data = await homeclass.getitem();
    if (data != null) {
      itemdata = data;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Icon(Icons.arrow_back_ios),
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Homes for Scale",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "23,842 Ads in lahore",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavoriteScreen1()));
                    },
                    child: Icon(Icons.bookmark_border)),
                SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Text("Save"),
                ),
              ],
            )
          ],
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Color.fromARGB(255, 218, 216, 216)),
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
                                        image: NetworkImage(
                                            list[i]["image"].toString()),
                                        fit: BoxFit.cover)),
                                // width: 120,
                                // child: Image.network(
                                // (list[i]["image"].toString()),
                                //  //  height: 900,
                                //   // width: 105,
                                // ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text(
                                      "Super Hot",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
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
                                        borderRadius: BorderRadius.circular(5),
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
                          padding: const EdgeInsets.only(top: 8.0, right: 8),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text((list[i]["timetext"].toString()),
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
                                          // color:(list[i]["containarcolo"]),
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
                                      (list[i]["Croretext"].toString()),
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
                                    box1((Icons.bed),
                                        (list[i]["roomtext"].toString())),
                                    Spacer(),
                                    box1((Icons.shower),
                                        (list[i]["showertext"].toString())),
                                    Spacer(),
                                    box1(
                                        (Icons.crop_square),
                                        (list[i]["crop_square text"]
                                            .toString())),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () async {
                                        if (checkfav(list[i]["name"])) {
                                          // Item is already in favorites, so remove it
                                          await homeclass
                                              .removeitem1(list[i]["name"]);
                                        } else {
                                          // Item is not in favorites, so add it
                                          await homeclass.saveitem(list[i]);
                                        }
                                        await getitem();
                                      },
                                      icon: Icon(
                                        Icons.favorite,
                                        color: checkfav(list[i]["name"])
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ),
                                    // IconButton(onPressed: ()async{
                                    //  await homeclass.saveitem(list[i]);
                                    //  await  getitem();
                                    // }, icon: Icon(Icons.favorite,))
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
                                            border:
                                                Border.all(color: Colors.green),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "SMS",
                                          style: TextStyle(color: Colors.green),
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
                                            border:
                                                Border.all(color: Colors.green),
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
                                            border:
                                                Border.all(color: Colors.green),
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
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
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
          
          
        

    
//         body:ListView.builder(itemCount: list.length,
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
                              
//                               Container(
//                                decoration:BoxDecoration(image: DecorationImage(image: NetworkImage(list[i]["image"].toString()),fit: BoxFit.cover)
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
//                                     Text((list[i]["timetext"].toString()),
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
//                                           //  color:(list[i]["containarcolor"])as Color,
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
//                                       (list[i]["Croretext"].toString()),
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
//                                     box1((Icons.bed), (list[i]["roomtext"].toString())),
//                                     Spacer(),
//                                     box1((Icons.shower), (list[i]["showertext"].toString())),
//                                     Spacer(),
//                                     box1((Icons.crop_square), (list[i]["crop_square text"].toString())),
//                                     SizedBox(
//                                       width: 2,
//                                     ),
//                                     Spacer(),
//                                   IconButton(onPressed: (){
//                                     homeclass.saveitem(list[i]);
//                                     getitem();
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
//           //        image: (list[i]["image"].toString()),
          
        
        
        
        
        
      

//         body: SingleChildScrollView(
//           child: Column(children: [
          
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     box(Icons.format_list_bulleted, "Fillter"),
//                     box(Icons.sort, "Sort"),
//                     box(Icons.arrow_drop_down, "location"),
//                     box(Icons.price_change, "Price Rate")
//                   ],
//                 ),
//               ),
//             ),
//             // ListView.builder(
//             //   itemCount: list.length,
//             //   itemBuilder: (context, i) {
//             //     return customContainer(
//             //       image: list[i]["image"],
//             //       color: list[i]["containarcolor"],
//             //       timetext: list[i]["45 minutes ago"],
//             //     );
                
//             //   },
//             // )
        
  
  
//    ])
//      )
//       );
//   }
// }
// Widget box(icon, var text) {
//   return Padding(
//     padding: const EdgeInsets.all(5.0),
//     child: Container(
//       padding: EdgeInsets.all(8.0),
//       height: 40,
//       // width: 30,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Color.fromARGB(255, 218, 216, 216)),
//           borderRadius: BorderRadius.circular(10)),
//       child: Row(children: [
//         Icon(
//           icon,
//           color: Color.fromARGB(255, 129, 228, 132),
//           size: 15,
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         Text(text)
//       ]),
//     ),
//   );
// }
