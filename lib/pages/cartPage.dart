import 'package:flutter/material.dart';

import '../widgets/CartBottomBar.dart';
import '../widgets/CartItemSamples.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "my cart",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFB608)),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 1)
                      ]),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Color(0xFFFFB608),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: [
                CheckboxListTile(
                  activeColor: Color(0xFFFFB608),
                  title: Text(
                    "select all items",
                    style: TextStyle(fontSize: 18),
                  ),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                CartItemSamples(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5)
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "sub-total",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)),
                    ),
                    Text(
                      "\$100",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)),
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "delivery fee",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)),
                    ),
                    Text(
                      "\$100",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)),
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "discount",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)),
                    ),
                    Text(
                      "\$10",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}
