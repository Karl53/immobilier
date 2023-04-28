
import 'package:flutter/material.dart';
import 'package:kama/components/page1.dart';
import 'package:kama/components/page2.dart';
import 'package:kama/pages/Home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyLoad extends StatefulWidget {
  const MyLoad({super.key});

  @override
  State<MyLoad> createState() => _MyLoadState();
}

class _MyLoadState extends State<MyLoad> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 400,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: const [
                Page1(),
                Page2(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: SwapEffect(
                activeDotColor: Colors.blue,
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.blue.shade100),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10.0),
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'Find Your                          Sweet Home\n\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Creative innovation apron availability\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                TextSpan(
                    text: 'urban synthetic petticoat\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ))
              ]),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHome()),
                  );
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
