import 'package:bluebay_uapp/app/core/app_size.dart';
import 'package:bluebay_uapp/app/modules/home/model/home_screen_model.dart';
import 'package:bluebay_uapp/app/modules/home/screen/scrollable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/colors.dart';
import '../controller/home_screen_controller.dart';
import 'profile_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // search+profile container
          ProfileSearchWidget(),

          // scrollable cards
          ScrollableCardsWidget(),
        ],
      ),
    );
  }
}


