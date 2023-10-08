import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/textfeild_widget.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/view/myprofile_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70,
            ),
            TextFeildWidget(
              text: "Name",
              text1: "Enter your Name",
            ),
            // TextField(

            //   decoration: InputDecoration(
            //    fillColor: Color(0xffFFFFFF),
            //                 filled: true,
            //     labelText: "NAME",

            //       //   hintText: "Mariya Arshad",
            //    suffixIcon: Icon(Icons.check,color: Colors.grey,),
            //    border: OutlineInputBorder(borderSide: BorderSide.none)
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            //  SizedBox(height: 70,),
            TextFeildWidget(
              text: "E.mail",
              text1: "Enter your email",
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              height: 70,
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
              height: 20,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfileScreen()));
                  },
                  child: Text("Already have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "DMSerifDisplay-Italic")),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "->",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text("Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // Spacer(),
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
                             "https://pureoxygenlabs.com/wp-content/uploads/2022/07/facebook-app-logo-250x215-1.png"))),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
