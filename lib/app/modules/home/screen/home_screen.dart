import 'package:bluebay_uapp/app/core/app_size.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // search+profile container
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: SliverToBoxAdapter(
              child: Container(
                height: getWidth(220),
                decoration: BoxDecoration(
                  color: AppColors.tealColor.withAlpha(470),
                ),

                child: Column(
                  children: [
                    // logo and profile
                    Padding(
                      padding: EdgeInsets.only(
                        top: getWidth(65),
                        left: getWidth(20),
                      ),
                      child: Row(
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
                            child: Image.asset(AppIcons.boy),
                          )
                        ],
                      ),
                    ),

                    // search bar
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
