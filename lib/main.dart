import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/counter.dart';
import 'package:flutter_application_1/view/demo.dart';
import 'package:flutter_application_1/view/favorite_screen.dart';
import 'package:flutter_application_1/view/favorite_screen1.dart';
import 'package:flutter_application_1/view/favorite_screen3.dart';
import 'package:flutter_application_1/view/favorite_screen4.dart';
import 'package:flutter_application_1/view/forget_screen.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/view/myorder_screen.dart';
import 'package:flutter_application_1/view/myprofile_screen.dart';
import 'package:flutter_application_1/view/orderdetail_screen.dart';
import 'package:flutter_application_1/view/reveiw_screen.dart';
import 'package:flutter_application_1/view/review&rate_screen.dart';
import 'package:flutter_application_1/view/settting_screen.dart';
import 'package:flutter_application_1/view/shortdress_screen.dart';
import 'package:flutter_application_1/view/signup_screen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home:Counter(),
      //  home:Demo(),
      //  home:FavoriteScreen1(),
      // home:FavoriteScreen(),
      // home:HomeScreen(),
      //  home: HomeScreen(),

           home: SignUpScreen(),
        //  home:LoginScreen(),
      //  home:ForgetScreen(),
      //  home:MyProfileScreen(),
      //  home:MyOrderScreen(),
          // home:SettingScreen(),
        // home:OrderDetail(),
    //  home: ShortDressScreen(),
      //  home:RatingReview(),
        // home: ReviewScreen(),
        // home: FavoriteScreen3(),
        //  home:FavoriteScreen4(),
    );
  }
}
