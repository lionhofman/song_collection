import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:song_collection/app/core/values/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Text(
            dayPeriodMessage(),
            style: TextStyles.bigTextWhiteBold,
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: new Icon(Icons.notifications_none),
              color: Colors.white,
              onPressed: () {
                Get.back();
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.schedule),
              onPressed: () {
                Get.back();
              },
            ),
            IconButton(
              color: Colors.white,
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

  String dayPeriodMessage() {
    var timeNow = DateTime.now().hour;
    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }
}
