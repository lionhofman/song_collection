import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Good Morning"),
        Row(
          children: [
            IconButton(
              icon: new Icon(Icons.notifications_none),
              onPressed: () {
                Get.back();
              },
            ),
            IconButton(
              icon: Icon(Icons.schedule),
              onPressed: () {
                Get.back();
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Get.back();
              },
            )
          ],
        )
      ],
    );
  }
}
