import 'package:flutter/material.dart';
import 'package:song_collection/app/core/values/assets.dart';
import 'package:song_collection/app/domain/entities/showcase_header.dart';
import 'package:song_collection/app/ui/modules/home/local_widgets/home_header.dart';
import 'package:song_collection/app/ui/modules/showcase/showcase_list.dart';

import 'local_widgets/recently_played_widget.dart';
import 'package:song_collection/app/data/datasource/list_your_shows.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                ShowcaseList(
                  header: ShowcaseHeader(
                    bigTitle: "Tecnology Today",
                    smallTitle: "Popular with listners of",
                    imgUrl: Assets.assetBeatles,
                  ),
                  listShowCase: listYourShows,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
