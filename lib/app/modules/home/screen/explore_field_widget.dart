import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/app_size.dart';
import '../../../core/colors.dart';
import '../model/home_screen_model.dart';

class ExploreFieldWidget extends StatelessWidget {
  const ExploreFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(30),
        // vertical: getWidth(20),
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Field Today 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getWidth(17),
                  ),
                ),
                SmoothPageIndicator(
                  controller: PageController(),
                  count: 3 ,
                  effect: ExpandingDotsEffect(
                      dotHeight: getWidth(10),
                      dotWidth: getWidth(10),
                      dotColor: AppColors.greyColor.withAlpha(400),
                      activeDotColor: AppColors.tealColor.withAlpha(450)),
                ),
              ],
            ),

            SizedBox(height: getWidth(20)),
            SizedBox(
              height: getWidth(230),
              width:
              getWidth(230) * ExploreFieldModel.exploreFields.length,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ExploreFieldModel.exploreFields.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: EdgeInsets.only(right: getWidth(20)),
                    child: Container(
                      // height: getWidth(100),
                      width: getWidth(200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getWidth(20)),
                        border: Border.all(
                          color: AppColors.greyColor.withAlpha(100),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getWidth(20),
                          vertical: getWidth(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ExploreFieldModel.exploreFields[i].fieldImg,
                              height: getWidth(80),
                              opacity: AlwaysStoppedAnimation(0.7),
                            ),
                            SizedBox(height: getWidth(10)),
                            Expanded(
                              child: Text(
                                ExploreFieldModel
                                    .exploreFields[i]
                                    .fieldName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getWidth(15),
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(height: getWidth(10)),
                            Expanded(
                              child: Text(
                                "${ExploreFieldModel.exploreFields[i].fieldCount} Courses",
                                style: TextStyle(
                                  color: AppColors.greyColor.withAlpha(
                                    200,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}