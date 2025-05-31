import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../modules/home/controller/home_screen_controller.dart';
import '../modules/mainNavBar/controller/nav_bar_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => HomeScreenController());
  }
}
