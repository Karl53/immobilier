// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyCard1 extends StatelessWidget {
  String Imgsrc;

  MyCard1({required this.Imgsrc});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            height: 190,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Imgsrc), fit: BoxFit.cover)),
          ),
        ));
  }
}
