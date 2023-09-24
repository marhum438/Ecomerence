import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/custom_order_containar.dart';
import 'package:flutter_application_1/view/components/custum_detail_card.dart';
import 'package:flutter_application_1/view/components/custum_widget.dart';
import 'package:flutter_application_1/view/myprofile_screen.dart';


class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          
          onTap: (){
             Navigator.pop(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
              
          },
          child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22,
              ),
              Text(
                "My Order",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOrderContainar(
                    Color: Colors.black,
                    text: "Delivered",
                    Colors: Colors.white,
                  ),
                  // SizedBox(width: 15,),
                  CustomOrderContainar(
                    Color: Colors.white,
                    text: "Processing",
                  ),
                  // SizedBox(width: 15,),
                  CustomOrderContainar(
                    Color: Colors.white,
                    text: "Cancelled",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              OrderDetailCard(),
              SizedBox(
                height: 20,
              ),
              OrderDetailCard(),
              SizedBox(
                height: 20,
              ),
              OrderDetailCard(),
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
                      icon: Icons.favorite_outline,
                      text: "favorite",
                      colors: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    customwidget(
                      icon: Icons.person_2_outlined,
                      text: "profile",
                      colors: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
