import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget {
  const ItemBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFF7CA0F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "buy now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    letterSpacing: 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
