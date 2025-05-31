import 'package:flutter/material.dart';

import '../../../core/app_size.dart';
import '../../../core/colors.dart';
import '../../../core/images.dart';

class PopularCourseWidget extends StatelessWidget {
  const PopularCourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(25),
        vertical: getWidth(10),
      ),

      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 5,
          (context, index) => Column(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(getWidth(20)),
                splashColor: Colors.teal.shade50,
                onTap: () {},
                child: Container(
                  height: getWidth(130),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getWidth(20)),
                    border: Border.all(
                      color: AppColors.greyColor.withAlpha(100),
                    ),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getWidth(15),
                          vertical: getWidth(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppImages.analysis,
                              height: getWidth(50),
                            ),
                            SizedBox(width: getWidth(30)),

                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'BA (Hons) International Business Pathways with Foundation Year',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'University of the West of Scotland London',
                                    style: TextStyle(
                                      color: AppColors.greyColor.withAlpha(200),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getWidth(15),
                          vertical: getWidth(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.greyColor.withAlpha(200),
                                ),
                                SizedBox(width: getWidth(5)),
                                Text(
                                  "London",
                                  style: TextStyle(
                                    color: AppColors.greyColor.withAlpha(200),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  "\$ 9535",
                                  style: TextStyle(
                                    fontSize: getWidth(18),
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: getWidth(10)),

                                Text(
                                  "/Yearly",
                                  style: TextStyle(
                                    color: AppColors.greyColor.withAlpha(200),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
