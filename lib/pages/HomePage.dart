import 'package:flutter/material.dart';

import '../widgets/HomeBottomBar.dart';
import '../widgets/home_page_posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 4; i++)
                  Image.asset(
                    "images/deal$i.jpg",
                    height: 250,
                    fit: BoxFit.cover,
                  )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5)
            ]),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 9; i++)
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    child: Image.asset(
                      "images/$i.png",
                      fit: BoxFit.cover,
                    ),
                  )
              ],
            ),
          ),
          HomePagePosts(),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
