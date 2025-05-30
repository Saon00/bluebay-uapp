import 'package:bluebay_uapp/app/modules/home/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> screens =
      [
        HomeScreen(),
        Text("2 Screen"),
        Text("3 Screen"),
        Text("4 Screen"),
        Text("5 Screen"),
      ].obs;

  void changeIndex(var i) {
    if (selectedIndex.value != i) { // to prevent unnecessary change
      selectedIndex.value = i;
    }
  }

  void backToHome() {
    if (selectedIndex.value != 0) {
      selectedIndex.value = 0;
    }
  }
}
