import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/textfeild_widget.dart';
import 'package:flutter_application_1/view/login_screen.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(onTap:(){
               Navigator.pop(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            
            },child: Icon(Icons.arrow_back_ios)),
            SizedBox(
              height: 22,
            ),
            Text(
              "Forget PassWord ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
                "Please Enter Your Email Address.You will receive\na code to create new password via email",
                style: TextStyle(color: Colors.black)),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextFeildWidget(text: "E.mail",
             text1: "Enter your email",),
            ),
            SizedBox(height: 9),
            Text(
              "        Not Valid Address Please enter your @email.com",
              style: TextStyle(color: Colors.amber),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text("Send",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
