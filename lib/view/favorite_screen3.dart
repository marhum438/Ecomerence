import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/favorite_container.dart';
import 'package:flutter_application_1/view/components/favorite_screen_card.dart';
import 'package:flutter_application_1/view/components/custom_icon_widget.dart';
import 'package:flutter_application_1/view/components/custum_widget.dart';
import 'package:flutter_application_1/view/favorite_screen4.dart';

class FavoriteScreen3 extends StatefulWidget {
  const FavoriteScreen3({super.key});

  @override
  State<FavoriteScreen3> createState() => _FavoriteScreen3State();
}

class _FavoriteScreen3State extends State<FavoriteScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              )
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Favorites",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
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
                Stack(clipBehavior: Clip.none, children: [
                 FavoritScreenCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlhEiYOa6L88pCvXIZYtPoaVwjQj3xjqJDMg&usqp=CAU",
                    text: "Lime",
                    text1: "Shirt",
                    text2: " black",
                    text4: " S",
                    text3: "32\$",
                    text5: "(10)",
                    Color: Colors.yellow,
                  ),
                  Positioned(
                      right: -1,
                      bottom: -12,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 241, 82, 8),
                        child: Icon(
                          Icons.shop,
                          size: 10,
                          color: Colors.white,
                        ),
                        maxRadius: 12,
                      )),
                ]),
                SizedBox(
                  height: 22,
                ),
                Stack(children: [
                 FavoritScreenCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCByhmxJ0VG--V_q3RYhkCbUvesB9QhwKK7A&usqp=CAU",
                    text: "Mango",
                    text1: "Longsleeve Violeta",
                    text2: " Orange",
                    text4: " 5",
                    text3: "46\$",
                    text5: "(0)",
                    Color: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        height: 18,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "Null",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ))),
                  ),
                ]),
                SizedBox(
                  height: 22,
                ),
                Stack(clipBehavior: Clip.none, children: [
                 FavoritScreenCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTr2lCrwe-Ge8Xfxdl4jnhyUzDwCRyluaCw&usqp=CAU",
                    text: "Lime",
                    text1: "Shirt",
                    text2: " Grey",
                    text4: " L",
                    text3: "52\$",
                    text5: "(10)",
                    Color: Colors.yellow,
                  ),
                  Container(
                     height: 120,
            width: 100,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.60),borderRadius: BorderRadius.circular(12)),
                   
                  ),
                  Positioned(
                      right: -1,
                      bottom: -12,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 241, 82, 8),
                        child: Icon(
                          Icons.shop,
                          size: 10,
                          color: Colors.white,
                        ),
                        maxRadius: 12,
                      )),
                ]),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sorry This Item is currently send out",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(clipBehavior: Clip.none, children: [
                 FavoritScreenCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHIRsJUZ7Y9pWWslxfoJUQ3_q5Ok5VTssQDAqvoYxbfKAhRWu1uXTeKvszoJoNvphprj8&usqp=CAU",
                    text: "Lime",
                    text1: "T-Shirt",
                    text2: " black",
                    text4: " S",
                    text3: "55\$",
                    text5: "(0)",
                    Color: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        height: 18,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "-20%",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ))),
                  ),
                  Positioned(
                      right: -1,
                      bottom: -12,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 241, 82, 8),
                        child: Icon(
                          Icons.shop,
                          size: 10,
                          color: Colors.white,
                        ),
                        maxRadius: 12,
                      )),
                ]),
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
                        colors:Colors.grey[400],
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
