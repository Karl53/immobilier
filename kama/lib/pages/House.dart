import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHouse extends StatefulWidget {
  const MyHouse({Key? key}) : super(key: key);

  @override
  State<MyHouse> createState() => _MyHouseState();
}

class _MyHouseState extends State<MyHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: ListView(
          children: [
            Container(
              height: 260,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('lib/images/maison1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(9)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Action when first icon is pressed
                          },
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.bookmark_remove,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Action when second icon is pressed
                          },
                        ),
                      ]),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Duplexe Appartement',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        'Stoctone,new Hampshire',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        '4.8(256 Reviews)',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.bed,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Action when first icon is pressed
                        },
                      ),
                      const Text(
                        '4',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.bathtub,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Action when first icon is pressed
                        },
                      ),
                      const Text(
                        '3',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.api,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Action when first icon is pressed
                        },
                      ),
                      const Text(
                        '100m area',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: "fffff",
              ),
              WidgetSpan(
                  child: ExpansionTile(
                title: Text('Read more'),
                children: [Text("Les génies sont partis")],
              ))
            ])),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                    child: Text(
                      'Gallery',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal, // Optional
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 150,
                            width: 110,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/images/maison1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 150,
                            width: 110,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/images/maison1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 150,
                            width: 110,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/images/maison1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.maxFinite,
              color: Colors.grey[350],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "15,000,000\n",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            TextSpan(
                                text: "Total price",
                                style: TextStyle(color: Colors.black))
                          ])),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              width: 100,
                              height: 40,
                              color: Colors.amber,
                              child: const Center(
                                child: Text("Book Now",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
