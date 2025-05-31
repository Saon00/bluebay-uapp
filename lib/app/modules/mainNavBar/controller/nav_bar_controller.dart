import 'package:bluebay_uapp/app/modules/application/screen/application_screen.dart';
import 'package:bluebay_uapp/app/modules/home/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../search/screen/search_screen.dart';

class NavBarController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> screens =
      [
        HomeScreen(),
        SearchScreen(),
        Text("Chat Screen"),
        ApplicationScreen(),
        Text("Profile Screen"),
      ].obs;

  void changeIndex(var i) {
    if (selectedIndex.value != i) {
      // to prevent unnecessary change
      selectedIndex.value = i;
    }
  }

  void backToHome() {
    if (selectedIndex.value != 0) {
      // to prevent unnecessary change
      selectedIndex.value = 0;
    }
  }
}
