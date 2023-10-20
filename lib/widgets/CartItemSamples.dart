import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  const CartItemSamples({super.key});

  @override
  State<CartItemSamples> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Color(0xFFFFB608),
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      },
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 230, 177),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 8)
                          ]),
                      child: Image.asset(
                        "images/1.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            "item name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(162, 0, 0, 0)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$50",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFB608),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "/ 5kg",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFB608),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "01",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(162, 0, 0, 0)),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFB608),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
