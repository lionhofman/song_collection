import 'package:flutter/material.dart';
import 'package:song_collection/app/core/values/assets.dart';

class RecentlyPlayedWidget extends StatelessWidget {
  final List<String>? listRecently;

  const RecentlyPlayedWidget({ this.listRecently, Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.all(4.0),
         child: GridView.count(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      crossAxisCount: 2,
      childAspectRatio: 170 / 50,
      children: List.generate(
          6,
          (index) {
            return 

            InkWell(
                onTap: () {
                  //TODO Go to page Of Detail 
                },
                child:Container(
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.black87,
                    ),
              child: Row(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(5), bottomLeft: Radius.circular(5)),
                      child:Image(
                      image: AssetImage(Assets.assetBeatles),
                      fit: BoxFit.fill,
                    ),),
                 
              
              Text("The Beatles",
              style: TextStyle(
                color: Colors.white,
              ),
              
              ),


              ],),),
            );
            
          },
      ),
    ),
       );
  }
}