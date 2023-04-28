import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'Icon.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 50,
            width: 50,
            child: Image.asset(
              'lib/images/maison2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
