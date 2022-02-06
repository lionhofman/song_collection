import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:song_collection/app/ui/routes/app_pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:song_collection/app/ui/routes/app_routes.dart';

import 'app_binding.dart';


class AppWidget extends StatelessWidget {

  const AppWidget({ Key? key }) : super(key: key);
 static final ThemeData theme = ThemeData(
    primaryColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static const String APP_NAME = 'Song Collection';
   @override
   Widget build(BuildContext context) {
       return GetMaterialApp(
      // The two lines bellow are for the responsive
      title: APP_NAME,
       initialRoute: AppRoutes.HOME,
      debugShowCheckedModeBanner: false,
      theme: theme,
      getPages: AppPages.pages,
      defaultTransition: Transition.noTransition,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt', 'BR'),
      ],
      locale: Locale('pt', 'BR'),
      initialBinding: ApplicationBinding(),
    );
  
  }
}