import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
 
class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () { 
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
             backgroundColor: Colors.white,
             body: Center(
               child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1138644570/vector/shopping-cart-icon-design-cart-icon-symbol-design.jpg?s=612x612&w=0&k=20&c=_lTGkSkJ6ha8ZNiKD8XWVtLNyTjQ74HCu_c4WFio27g="))),),
             )
    );
  }
}