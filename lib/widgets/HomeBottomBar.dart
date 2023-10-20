import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/pages/cartPage.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Column(
              children: [
                Icon(
                  Icons.home,
                  color: Color(0xFFF7CA0F),
                ),
                Text(
                  "home",
                  style: TextStyle(
                      color: Color(0xFFF7CA0F),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.search,
                color: Color(0xFFF7CA0F),
              ),
              Text(
                "explore",
                style: TextStyle(
                    color: Color(0xFFF7CA0F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "CartPage");
            },
            child: Column(
              children: [
                Icon(
                  Icons.card_membership,
                  color: Color(0xFFF7CA0F),
                ),
                Text(
                  "My Card",
                  style: TextStyle(
                      color: Color(0xFFF7CA0F),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.person,
                color: Color(0xFFF7CA0F),
              ),
              Text(
                "account",
                style: TextStyle(
                    color: Color(0xFFF7CA0F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
