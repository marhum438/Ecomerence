import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/textfeild_widget.dart';
import 'package:flutter_application_1/view/myprofile_screen.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
              
          },child: Icon(Icons.arrow_back_ios)),
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  height: 22,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Personal Information",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFeildWidget(
                  text: "Full Name",
                  text1: "Enter your name",
                ),
                SizedBox(
                  height: 12,
                ),
              TextFeildWidget(
                  text: "Date Of Birth",
                  text1: "Enter your date of birth",
               
               
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text("Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Spacer(),
                    MaterialButton(
                      child: Text("change"),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 500,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Center(
                                          child: Text(
                                        "Password Change",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            fillColor: Color(0xffFFFFFF),
                                            filled: true,
                                            //     labelText: "NAME",
            
                                            hintText: "Old Password",
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15),
                                            //  suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none)),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Forget Password ?",
                                            style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            fillColor: Color(0xffFFFFFF),
                                            filled: true,
                                            //     labelText: "NAME",
            
                                            hintText: "New Password",
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15),
                                            //  suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none)),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            fillColor: Color(0xffFFFFFF),
                                            filled: true,
                                            //     labelText: "NAME",
            
                                            hintText: "Repeat New Password",
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15),
                                            //  suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none)),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Center(
                                          child: Text("Saved Password",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
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
                          hintStyle: TextStyle(
                              color: Colors.grey[400], fontSize: 18),
                          //  suffixIcon: Icon(Icons.check,color: Colors.grey,),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ],
              ),
                      ),
                       SizedBox(
                  height: 40,
                ),
                Text("Notification",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Sales",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Switch(
                      activeColor: Colors.green,
                      value: true,
                      onChanged: (bool newValue) {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("New Arrivals",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Switch(
                      activeColor: Colors.green,
                      value: false,
                      onChanged: (bool newValue) {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Delivery status changes",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Switch(
                      activeColor: Colors.green,
                      value: false,
                      onChanged: (bool newValue) {},
                    )
                  ],
                ),
              ]),
            )));
  }
}
