import 'package:bluebay_uapp/app/modules/home/controller/home_screen_controller.dart';
import 'package:bluebay_uapp/app/modules/mainNavBar/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/app_size.dart';
import '../../../core/colors.dart';
import '../../home/screen/popular_course_widget.dart';
import '../../home/screen/scrollable_card_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavBarController navBarController = Get.find<NavBarController>();
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(left: getWidth(25),
              top: getWidth(10)
              ),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // back button
                    CircleAvatar(
                      maxRadius: getWidth(25),
                      backgroundColor: AppColors.greyColor.withAlpha(80),
                      child: IconButton(
                        onPressed: () {
                          navBarController.backToHome();
                        },
                        icon: Icon(Icons.arrow_back),
                        color: AppColors.blackColor,
                        splashColor: Colors.transparent,
                      ),
                    ),

                    // search bar
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(20),
                        right: getWidth(20),
                      ),
                      child: SizedBox(
                        width: getWidth(290),
                        child: TextFormField(
                          controller: TextEditingController(),
                          cursorColor: AppColors.tealColor,
                          decoration: InputDecoration(
                            fillColor: AppColors.tealColor.withAlpha(30),
                            filled: true,
                            hintText: "search..",
                            hintStyle: TextStyle(
                              color: AppColors.greyColor.withAlpha(500),
                            ),

                            

                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: getWidth(20)),
                              child: Icon(
                                Icons.search_rounded,
                                color: AppColors.greyColor.withAlpha(500),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.whiteColor),
                              borderRadius: BorderRadius.circular(getWidth(40)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.whiteColor),
                              borderRadius: BorderRadius.circular(getWidth(40)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // scrollable cards
            ScrollableCardsWidget(),

            // popular courses
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(25),
                vertical: getWidth(15),
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Found Courses (${24})",
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
      ),
    );
  }
}
