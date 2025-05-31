import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_size.dart';
import '../../../core/colors.dart';
import '../controller/home_screen_controller.dart';
import '../model/home_screen_model.dart';

class ScrollableCardsWidget extends StatelessWidget {
  const ScrollableCardsWidget({super.key});

  // final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(20),
        vertical: getWidth(10),
      ),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: getWidth(70),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ScrollableCardModel.cardNames.length,
            itemBuilder: (BuildContext context, int i) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(5),
                  vertical: getWidth(10),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    homeScreenController.changeCard(
                      ScrollableCardModel.cardNames[i].index,
                    );
                  },
                  child: Obx(
                    () => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(getWidth(20)),
                      ),
                      elevation: 0.3,
                      color:
                          ScrollableCardModel.cardNames[i].index ==
                                  homeScreenController.selectedCard.value
                              ? AppColors.tealColor.withAlpha(450)
                              : AppColors.whiteColor.withAlpha(450),
                      child: Padding(
                        padding: EdgeInsets.all(getWidth(10)),
                        child: Text(
                          ScrollableCardModel.cardNames[i].cardName,
                          style: TextStyle(
                            color:
                                ScrollableCardModel.cardNames[i].index ==
                                        homeScreenController.selectedCard.value
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
