import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/components/custom_order_containar.dart';
import 'package:flutter_application_1/view/components/custom_order_detail.dart';
import 'package:flutter_application_1/view/components/custum_widget.dart';
import 'package:flutter_application_1/view/components/order_information_widget.dart';
import 'package:flutter_application_1/view/myorder_screen.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
             Navigator.pop(context, MaterialPageRoute(builder: (context)=>MyOrderScreen()));
              
          },
          
          child: Icon(Icons.arrow_back_ios)),
        title: Text("Order Detail"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child:
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Row(
              children: [
                Text(
                  "Order  N21947034",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                ),
                Spacer(),
                Text(
                  "5-12-2019",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey[300]),
                ),
              ],
                      ),
                      SizedBox(
              height: 12,
                      ),
                      Row(
              children: [
                Text(
                  "Tracking Number:  ",
                  style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                ),
                Spacer(),
                Text(
                  "Delivered",
                  style: TextStyle(color: Colors.green),
                )
              ],
                      ),
                      SizedBox(
              height: 12,
                      ),
                      Text(
              "3 items",
              style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
              height: 19,
                      ),
                      CustomOrderDetail(
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8I3iR1ZPiYTI2KKyNBKTX4UyNoqbf7TV5ig&usqp=CAU"),
                      SizedBox(
              height: 19,
                      ),
                      CustomOrderDetail(
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqoP1AW1NQSEQomVeVUsvShMwDntlGQj6ZKdhhoFM0q4DFlG2s4Qyy7rpK1h0EuwGdIhA&usqp=CAU"),
                      SizedBox(
              height: 19,
                      ),
                      CustomOrderDetail(
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpKgtiD_oJIfSBPg2bbwxWKeyiJDVTkdnlHdi7YNGV8enSpaqTEp0jnscxoFbitS7Wjyw&usqp=CAU"),
                      SizedBox(
              height: 19,
                      ),
                      Text(
              "Order Information",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
              height: 19,
                      ),
                   OrderInformationWidget(
              text: "Shoping Adress",
              width: 20.0,
              text1:
                  "Three newbridge Court,Chino\nHills, CA 91709, United state",
                      ),
                      SizedBox(
              height: 16,
                      ),
                      OrderInformationWidget(
              text: "Payment Method",
              width: 18.0,
              // image:NetworkImage("https://www.pngwing.com/en/search?q=visa+Mastercard"),
              text1: "**** **** ****3947",
                      ),
                      SizedBox(
              height: 16,
                      ),
                      Row(
              children: [
                       OrderInformationWidget(
                  text: "Delivery Method",
                  width: 20.0,
                  text1: "FedEx, 3 days, 15\$",
                ),
              ],
                      ),
                      SizedBox(
              height: 16,
                      ),
                 OrderInformationWidget(
              text: "Discount",
              width: 62.0,
              text1: "10%, Presonal Promo Code",
                      ),
                      SizedBox(
              height: 16,
                      ),
                      Row(
              children: [
               OrderInformationWidget(
                  text: "Total Amount",
                  width: 35.0,
                  text1: "133\$",
                ),
              ],
                      ),
                      SizedBox(
              height: 19,
                      ),
                      Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  CustomOrderContainar(
                  Color: Colors.white,
                  text: "Recorder",
                  Colors: Colors.black,
                  border: Border.all(),
                ),
                CustomOrderContainar(
                  Color: Colors.amber,
                  text: "Leave Feedback",
                  Colors: Colors.white,
                ),
              ],
                      ),
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
                    ]),
            ),
      ),
    );
  }
}
