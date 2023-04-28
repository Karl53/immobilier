import 'package:flutter/material.dart';
import 'package:kama/components/Card1.dart';
import 'package:kama/components/CurrentUser.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kama/pages/House.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentindex = 0;

  void _currentIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: _currentIndex,
        fixedColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: "chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "profil")
        ],
      ),
      body: ListView(children: [
        const MyUser(),
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay'),
                    children: [
                  TextSpan(
                      text: "Find\n", style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "best place ",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "nearby",
                      style: TextStyle(color: Colors.deepOrange))
                ])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search your...",
                        border: const OutlineInputBorder(),
                        prefixIcon: Icon(Icons.search_outlined)),
                  )),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                    height: 59,
                    width: 59,
                    color: Colors.deepOrange,
                    child: const Center(
                      child: Icon(
                        Icons.equalizer_sharp,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: "Categories", style: TextStyle(color: Colors.black)),
              ])),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHouse()),
                    );
                  },
                  child: MyCard1(Imgsrc: "lib/images/maison2.jpg"),
                ),
                MyCard1(Imgsrc: "lib/images/maison3.jpg"),
                MyCard1(Imgsrc: "lib/images/maison3.jpg"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: "Popular    ",
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                TextSpan(
                    text: "Recommended    ",
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                TextSpan(
                    text: "Nearest    ",
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
              ])),
        ),
        GridView.count(
          physics:
              const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                width: 300,
                height: 350,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/images/maison3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                width: 300,
                height: 350,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/images/maison3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: ' Duplex Apartment\n',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' dans un texte riche.\n',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  WidgetSpan(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                      child: Icon(Icons.star,
                                          size: 12, color: Colors.yellow),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' dans un texte riche.\n',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
