import 'package:get/get.dart';
import 'package:song_collection/app/ui/modules/home/home_page.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      // binding: WithdrawalListBinding(),
      transition: Transition.cupertino,
    ),
    // GetPage(
    //   name: AppRoutes.ORDER_LIST_PAGE,
    //   page: () => OrderListPage(),
    //   binding: OrderListBinding(),
    //   transition: Transition.cupertino,
    // ),
  ];
}