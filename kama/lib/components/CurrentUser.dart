import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kama/components/Icon.dart';

class MyUser extends StatelessWidget {
  const MyUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      // color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 10, bottom: 10, right: 10),
              child: Row(
                children: [
                  const MyIcon(),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Hi,\n", style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: "Aminatou BOUBAKAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ])),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                  height: 39,
                  width: 39,
                  color: Colors.deepOrange,
                  child: const Center(
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
