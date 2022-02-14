import 'package:flutter/material.dart';
import 'package:song_collection/app/core/values/text_styles.dart';
import 'package:song_collection/app/domain/entities/showcase.dart';
import 'package:song_collection/app/domain/entities/showcase_header.dart';
import 'package:song_collection/app/ui/modules/showcase/showcase_item.dart';

class ShowcaseList extends StatelessWidget {
  final ShowcaseHeader header;
  final List<Showcase> listShowCase;
  ShowcaseList({required this.header, required this.listShowCase, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        showCaseHeader(),
        const SizedBox(height: 8),
        Container(
            height: 250,
            child:
        ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(width: 8),
          scrollDirection: Axis.horizontal,
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

  Widget showCaseHeader(){
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: Image(
            width: 36,
            height: 36,
            image: AssetImage(header.imgUrl!),
            fit: BoxFit.fill,
          ),
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(style: TextStyles.bigTextWhiteBold, children: [
                  header.smallTitle != null ? TextSpan(text: '${header.smallTitle!.toUpperCase()}\n', style: TextStyles.extraSmallTextGrayLighter0) : TextSpan(),
                  TextSpan(text: '${header.bigTitle}')
                ])),
         ),
      ],
    );
  }
}
