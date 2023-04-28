import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration:const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('lib/images/maison1.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: const Center(),
                ))));
  }
}
