import 'package:flutter/material.dart';
import 'package:song_collection/app/core/values/text_styles.dart';
import 'package:song_collection/app/domain/entities/showcase.dart';
import 'package:song_collection/app/ui/modules/showcase/showcase_item.dart';

class ShowcaseList extends StatelessWidget {
  final String title;
  final List<Showcase> listShowCase;
  ShowcaseList({required this.title, required this.listShowCase, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyles.bigTextWhite,
        ),
        const SizedBox(height: 8),
        Container(
            height: 250,
            child:
        ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(width: 8),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemCount: listShowCase.length,
          itemBuilder: (context, index) {
            return ShowcaseItem(
              showcase: listShowCase[index],
            );
          },
        ),),
      ],
    );
  }
}
