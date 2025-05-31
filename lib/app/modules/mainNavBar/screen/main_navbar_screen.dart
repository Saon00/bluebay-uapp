import 'package:bluebay_uapp/app/core/colors.dart';
import 'package:bluebay_uapp/app/modules/mainNavBar/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNavbarScreen extends StatefulWidget {
  const MainNavbarScreen({super.key});

  @override
  State<MainNavbarScreen> createState() => _MainNavbarScreenState();
}

class _MainNavbarScreenState extends State<MainNavbarScreen> {
  NavBarController navBarController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(
          child: navBarController.screens[navBarController.selectedIndex.value],
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sticky_note_2_rounded),
              label: "Application",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Profile",
            ),
          ],
          currentIndex: navBarController.selectedIndex.value,
          selectedItemColor: AppColors.tealColor,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.whiteColor,
          unselectedItemColor: AppColors.greyColor,
          onTap: navBarController.changeIndex,
        ),
      ),
    );
  }
}
