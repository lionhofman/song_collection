import 'package:flutter/material.dart';
import 'package:song_collection/app/ui/modules/home/local_widgets/home_header.dart';

import 'local_widgets/recently_played_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey,
              Colors.black87,
            ],
          )),
          child: Column(
            children: [
              HomeHeader(),
              RecentlyPlayedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
