import 'package:flutter/material.dart';

import 'local_widgets/app_bar_header.dart';
import 'local_widgets/recently_played_widget.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
         
           appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child:AppBarHeader()),
           body: Container(
             decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey,
                    Colors.black87,
                  ],
                )),
             child: Column(
               children: [
                 RecentlyPlayedWidget(),
                 
                 
                 
               ],
             ),
           ),
       );
  }
}