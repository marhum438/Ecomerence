import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/favorite_container.dart';
import 'package:flutter_application_1/view/components/custom_icon_widget.dart';
import 'package:flutter_application_1/view/components/custum_widget.dart';
import 'package:flutter_application_1/view/components/favoritescreencard.dart';


class FavoriteScreen4 extends StatelessWidget {
  const FavoriteScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title:Center(child: Text("Favorite",style: TextStyle(fontWeight: FontWeight.bold),)),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              
              )
            ]),
            body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FavoriteContainer(
                          text: "Summer",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FavoriteContainer(
                          text: "T-shirt",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FavoriteContainer(
                          text: "Shirt",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FavoriteContainer(
                          text: "Summer",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    FavoriteScreenOption(
                        icon: Icons.filter_2,
                        text: "Filter",
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    FavoriteScreenOption(
                        icon: Icons.format_indent_increase,
                        text: "Price Lowest to High",
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    FavoriteScreenOption(
                        icon: Icons.menu,
                        text: "Menu",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children:[ FavoriteScreencard1(
                       image:
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlhEiYOa6L88pCvXIZYtPoaVwjQj3xjqJDMg&usqp=CAU",
                       text: "Lime",
                       text1: "Shirt",
                       text2: " black",
                       text4: " S",
                       text3: "32\$",
                       text5: "(10)",
                       Color: Colors.yellow,
                       color: Colors.yellow,
                        ),
                         Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "New",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ))),
                  ),
                 
                   ] ),
                      // Spacer(),
                    FavoriteScreencard1(
                     image:
                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCByhmxJ0VG--V_q3RYhkCbUvesB9QhwKK7A&usqp=CAU",
                     text: "Mango",
                     text1: "Longsleeve Violeta",
                     text2: " Orange",
                     text4: " 5",
                     text3: "46\$",
                     text5: "(0)",
                     Color: Colors.grey[400],
                        color: Colors.grey[400]
                      ),
                  ],
                ),
                 SizedBox(
                  height: 20,
                ),
               
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     FavoriteScreencard1(
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTr2lCrwe-Ge8Xfxdl4jnhyUzDwCRyluaCw&usqp=CAU",
                        text: "Lime",
                        text1: "Shirt",
                        text2: " Grey",
                        text4: " L",
                        text3: "52\$",
                        text5: "(10)",
                        Color: Colors.yellow,
                        color:  Colors.yellow,
                        
                      ),
                    
                      
                 
                       Stack(
                         children:[ FavoriteScreencard1(
                                         
                                           image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHIRsJUZ7Y9pWWslxfoJUQ3_q5Ok5VTssQDAqvoYxbfKAhRWu1uXTeKvszoJoNvphprj8&usqp=CAU",
                                           text: "Lime",
                                           text1: "T-Shirt",
                                           text2: " black",
                                           text4: " S",
                                           text3: "55\$",
                                           text5: "(0)",
                                           Color: Colors.grey[400],
                                       
                                       
                                           // Color: Colors.grey[400],
                                           color: Colors.grey[400],
                                         ),
                                          Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        height: 30,
                        width:40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "-20%",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ))),
                  ),
                 
                   ]),

                 
                   ],
                 ),

                  SizedBox(
                  height: 80,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customwidget(
                        icon: Icons.home,
                        text: "home",
                        colors: Colors.grey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      customwidget(
                        icon: Icons.shop,
                        text: "shop",
                        colors: Colors.grey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      customwidget(
                        icon: Icons.badge,
                        text: "bag",
                        colors: Colors.grey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      customwidget(
                        icon: Icons.favorite,
                        text: "favorite",
                        colors: Colors.red,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      customwidget(
                        icon: Icons.person_2_outlined,
                        text: "profile",
                        colors: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));

       
    
  }
}