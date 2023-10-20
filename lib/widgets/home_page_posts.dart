import 'package:flutter/material.dart';

class HomePagePosts extends StatelessWidget {
  const HomePagePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5)
        ]),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "flash sale",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GridView.count(
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 9; i++)
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF7F5F8),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "ItemPage");
                          },
                          child: Image.asset(
                            "images/$i.png",
                            fit: BoxFit.contain,
                            height: 130,
                            width: 120,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "item name",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$50",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFB608)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "/1 kg",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFFFB608),
                                    size: 28,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
