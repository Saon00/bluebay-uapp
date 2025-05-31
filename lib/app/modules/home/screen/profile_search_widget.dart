import 'package:flutter/material.dart';

import '../../../core/app_size.dart';
import '../../../core/colors.dart';
import '../../../core/icons.dart';

class ProfileSearchWidget extends StatelessWidget {
  const ProfileSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.zero,
      sliver: SliverToBoxAdapter(
        child: Container(
          height: getWidth(220),
          decoration: BoxDecoration(
            color: AppColors.tealColor.withAlpha(470),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getWidth(20)),
              bottomRight: Radius.circular(getWidth(20)),
            ),
          ),

          child: Column(
            children: [
              // logo and profile
              Padding(
                padding: EdgeInsets.only(
                  top: getWidth(65),
                  left: getWidth(20),
                  right: getWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "UAPP",
                      style: TextStyle(
                        fontSize: getWidth(30),
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    CircleAvatar(
                      backgroundColor: AppColors.whiteColor.withAlpha(150),
                      maxRadius: getWidth(20),
                      child: Image.asset(AppIcons.boy),
                    ),
                  ],
                ),
              ),

              // search bar
              Padding(
                padding: EdgeInsets.only(
                  top: getWidth(20),
                  left: getWidth(20),
                  right: getWidth(20),
                ),
                child: TextFormField(
                  controller: TextEditingController(),
                  cursorColor: AppColors.tealColor,
                  decoration: InputDecoration(
                    fillColor: AppColors.whiteColor.withAlpha(480),
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
            ],
          ),
        ),
      ),
    );
  }
}
