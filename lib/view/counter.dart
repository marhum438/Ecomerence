import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  addcount() async {
    count++;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("key", count);
    print(count);
  }

  addcount1() async {
    count++;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("key", 0);
    print(count);
  }

  getcount() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getInt("key");
    if (data != null) {
      count = data;
      setState(() {});
    }
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getcount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(100)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$count",
                  style: TextStyle(color: Colors.black, fontSize: 120),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "____________________________________",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                //  SizedBox(width: 100,),
                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        addcount1();
                        getcount();
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12.5),
                              border: Border.all(color: Colors.yellow)),
                        ),
                        SizedBox(height: 9,),
                        Text(
                          "RESET",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                //  Text("RESET",style: TextStyle(color: Colors.black),),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      addcount();
                      getcount();
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.yellow)),
                        child:Center(child: Text("TAP",style: TextStyle(color: Colors.white,fontSize: 25),))
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
