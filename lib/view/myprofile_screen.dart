import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/custum_tile_widget.dart';
import 'package:flutter_application_1/view/components/custum_widget.dart';
import 'package:flutter_application_1/view/favorite_screen3.dart';
import 'package:flutter_application_1/view/favorite_screen4.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/view/myorder_screen.dart';
import 'package:flutter_application_1/view/review&rate_screen.dart';
import 'package:flutter_application_1/view/settting_screen.dart';
import 'package:flutter_application_1/view/shortdress_screen.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
               
            },
            
            child: Icon(Icons.arrow_back_ios)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 22,
                ),
                Text(
                  "My Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE0KpjQAKCZGcLbdn6gf1wNzqSFPatLCx6eg&usqp=CAU",
                            ),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matilda Brown",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "matildabrown@mail.com",
                          style: TextStyle(
                              color: Color.fromARGB(255, 196, 189, 189)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrderScreen()));
              
                  },
                  child: CustomTile(
                    text: "My Order",
                    text1: "Already Have 12 Orders",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ShortDressScreen()));
              
                },
                  child: CustomTile(
                    text: "Shipping Addresses",
                    text1: "3 dresses",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTile(
                  text: "PayMent Method",
                  text1: "Visa **34",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTile(
                  text: "Promocodes",
                  text1: "you have special promocodes",
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingReview()));
              
                },
                  child: CustomTile(
                    text: "My Review ",
                    text1: "Review for 4 Items",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
              
                },
                  child: CustomTile(
                    text: "Setting ",
                    text1: "Notification, password",
                  ),
                ),
                //  Spacer(),
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
                      InkWell(onDoubleTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoriteScreen3()));
            
                      },
                        child: InkWell(onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoriteScreen4()));
              
                        },
                          child: customwidget(
                            icon: Icons.favorite_outline,
                            text: "favorite",
                            colors: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      customwidget(
                        icon: Icons.person,
                        text: "profile",
                        colors: Colors.red,
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
