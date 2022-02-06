
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppBarHeader extends StatelessWidget {

  const AppBarHeader({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return AppBar(
      
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: Colors.black,
      toolbarHeight: kToolbarHeight,
      title: 
      
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
            child: Text("Good Morning")),
           IconButton(
              icon: new Icon(Icons.notifications_none),
              onPressed: () {
                
                Get.back();
              },
            ),
           IconButton(
              icon: new Icon(Icons.schedule),
              onPressed: () {
                
                Get.back();
              },
            ),
          IconButton(
              icon: new Icon(Icons.settings),
              onPressed: () {
                
                Get.back();
              },
            )
          
        ],
      ),
      centerTitle: true,
      // leading: leadingIcon != null
      //     ? new IconButton(
      //         icon: new Icon(leadingIcon),
      //         onPressed: () {
      //           if (leadingPressed != null) {
      //             leadingPressed!();
      //           }
      //           Get.back();
      //         },
      //       )
      //     : null,
      // actions: actions ??
      //     [
      //       Visibility(
      //         visible: searchIcon,
      //         child: showSearchIcon(searchIcon),
      //       ),
      //     ],
    );
  
  }
}