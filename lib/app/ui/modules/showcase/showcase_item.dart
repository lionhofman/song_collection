import 'package:flutter/material.dart';
import 'package:song_collection/app/core/values/text_styles.dart';
import 'package:song_collection/app/domain/entities/showcase.dart';

class ShowcaseItem extends StatelessWidget {
  final Showcase showcase;
  const ShowcaseItem({required this.showcase, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5),),
          child: Image(
            height: 150,
            image: AssetImage(showcase.imgUrl),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          height: 32,
          padding: EdgeInsets.only(top: 8),
          child: Text(
            showcase.description,
            style: TextStyles.smallTextWhite,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
