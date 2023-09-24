import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/orderdetail_screen.dart';

class OrderDetailCard extends StatelessWidget {
  const OrderDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order  N21947034",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Spacer(),
                          Text(
                            "5-12-2019",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey[400]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Text(
                            "Tracking Number:  ",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("IW3475453455",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "Quality  ",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                          Spacer(),
                          Text(
                            "Total Amount:  ",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("112\$",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                border: Border.all()),
                            child: Center(
                                child: InkWell(onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetail()));
              
                                },
                                  child: Text(
                                                              "Details",
                                                            ),
                                )),
                          ),
                          Spacer(),
                          Text(
                            "Delivered",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
             
  }
}
