import 'package:flutter/material.dart';
import 'package:song_collection/app/core/values/text_styles.dart';
import 'package:song_collection/app/domain/entities/showcase.dart';

class ShowcaseItem extends StatelessWidget {
  final Showcase showcase;
  const ShowcaseItem({required this.showcase, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: Image(
            width: 100,
            height: 100,
            image: AssetImage(showcase.imgUrl),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 8.0),
        showcase.title != null
            ? Flexible(
                child: Container(
                  padding: const EdgeInsets.only(
                    bottom: 4,
                  ),
                  width: 100,
                  child: Text(
                    showcase.title!,
                    style: TextStyles.verySmallTextWhiteBold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            : Container(),
        showcase.description != null
            ? Flexible(
                flex: 2,
                child: Container(
                  width: 100,
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Text(
                    showcase.description!,
                    style: TextStyles.verySmallTextGrayLighter0,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
