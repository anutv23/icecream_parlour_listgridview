import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ScreenHeight * 0.30,
                  color: Colors.yellow,
                  width: ScreenWidth,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Ice Cream Parlor",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 10),
                      child: Image.asset(
                        "assets/images/icecream.jpg",
                        height: 120,
                      ),
                    ),
                  ],
                ),
                Category(),
              ],
            ),
            Product(),
          ],
        ),
      )),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> category = ["cone", "cup", "candy", "sundaes"];
    return Padding(
      padding: const EdgeInsets.only(top: 170.0),
      child: Container(
        height: 60,
        child: ListView.builder(
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                height: 80,
                width: 160,
                child: Center(
                    child: Text(
                  category[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
              ),
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  List<String> product = [
    "Orange Candy",
    "Choco chip",
    "Muffin",
    "mint pie",
    "Pink Candy",
    "Choco Mousse",
    "Kiwi Fondue",
    "Marshmellows",
    "Coco Pops",
    "Fudge",
    "Vanilla Cone",
    "Strawberry Fondue"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: product.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                color: Colors.yellowAccent,
                child: Center(child: Text(product[index])),
              ),
            );
          }),
    );
  }
}
