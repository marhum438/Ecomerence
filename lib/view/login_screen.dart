import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/textfeild_widget.dart';
import 'package:flutter_application_1/view/forget_screen.dart';
import 'package:flutter_application_1/view/myprofile_screen.dart';
import 'package:flutter_application_1/view/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(onTap:(){
             Navigator.pop(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
             },child: Icon(Icons.arrow_back_ios)),
            SizedBox(
              height: 22,
            ),
            Text(
              "Login ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70,
            ),
             TextFeildWidget(text: "E.mail",
             text1: "Enter your email",),SizedBox(
              height: 19,
            ),
            Container(
              height: 62,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 8,
                    ),
                    child: Text(""),
                  ),
                  Container(
                    height: 25,
                    //  margin: EdgeInsets.all(3),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          //     labelText: "NAME",

                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Colors.grey[400], fontSize: 18),
                          //  suffixIcon: Icon(Icons.check,color: Colors.grey,),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetScreen()));
              
                },
                  child: Text("Forget your Password",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "->",
                  style: TextStyle(color: Colors.amber),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
              
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
            Spacer(),
            Center(child: Text("Or Sign Up with social account")),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmB0ucn4yXXdi-zIBF5qyJIRBQ0KnNHLTlU3Zu45Dr-f7rlE3FQiTzQON57bS68-V6qsU&usqp=CAU"))),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 55,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                              "data:image/jpeg;base64,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"))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
