import 'package:bluebay_uapp/app/modules/home/screen/popular_course_widget.dart';
import 'package:bluebay_uapp/app/modules/home/screen/scrollable_card_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/app_size.dart';
import 'explore_field_widget.dart';
import 'profile_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // search+profile container
          ProfileSearchWidget(),

          // scrollable cards
          ScrollableCardsWidget(),

          // explore field today
          ExploreFieldWidget(),

          // popular courses
          SliverPadding(
            padding: EdgeInsets.only(
              left: getWidth(25),
              right: getWidth(25),
              top: getWidth(30),
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Popular Courses 🔥",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getWidth(17),
                ),
              ),
            ),
          ),

          PopularCourseWidget(),
        ],
      ),
    );
  }
}
