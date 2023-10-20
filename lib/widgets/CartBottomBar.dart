import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: Color(0xFFF5F9FD), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5)
      ]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.discount,
                  color: Color(0xFFFFB608),
                ),
                Text(
                  "use promo coupons",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(162, 0, 0, 0)),
                )
              ],
            ),
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "total",
                    style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(162, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$120",
                    style: TextStyle(
                        fontSize: 21,
                        color: Color(0xFFFFB608),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "OrderPage");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFB608),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "check out",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
