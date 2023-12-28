import 'package:get/get.dart';

import '../views/home.dart';

part 'pages.dart';

abstract class AppRoutes {
  static var defaultTransition = Transition.circularReveal;
  static final pages = [
    GetPage(
        name: _Routes.homePage,
         page: Home.new, 
         transition: defaultTransition,
         transitionDuration: transitionDuration
         )
  ];

  static var transitionDuration = const Duration(milliseconds: 5000);
}
