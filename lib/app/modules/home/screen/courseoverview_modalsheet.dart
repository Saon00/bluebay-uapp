import 'package:bluebay_uapp/app/modules/mainNavBar/controller/nav_bar_controller.dart';
import 'package:bluebay_uapp/app/modules/search/filters/controller/filter_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_size.dart';
import '../../../core/colors.dart';
import '../../../core/images.dart';
import '../../search/filters/screen/dropdown_widget.dart';

void showCourseOverview(BuildContext context) {
  FilterScreenController filterScreenController =
      Get.find<FilterScreenController>();
  showModalBottomSheet(
    // isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getWidth(10)),
            topRight: Radius.circular(getWidth(10)),
          ),
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * getWidth(0.9),
        child: Column(
          children: [
            Icon(Icons.linear_scale_sharp, color: AppColors.greyColor),
            Container(
              padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.greyColor.withAlpha(400)),
                ),
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getWidth(13)),
                  topRight: Radius.circular(getWidth(10)),
                ),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back), // Back arrow icon
                    onPressed: () => Get.back(), // Closes the bottom sheet
                  ),
                  SizedBox(width: getWidth(100)),
                  Text(
                    'Overview', // Title text
                    style: TextStyle(
                      fontSize: getWidth(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.find<NavBarController>().selectedIndex.value = 3; //
                      Get.back(); // Close after action
                    },
                    child: Text(
                      'Apply Now', // "Apply Now" text button
                      style: TextStyle(
                        color: AppColors.tealColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // scrollable part
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getWidth(25),
                    vertical: getWidth(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // course and varsity name and image
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(AppImages.analysis, height: getWidth(50)),
                          SizedBox(width: getWidth(30)),

                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'BA (Hons) International Business Pathways with Foundation Year',
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                      SizedBox(height: 20),
                      // student name
                      Row(
                        children: [
                          Text(
                            'Student',
                            style: TextStyle(color: AppColors.greyColor),
                          ),
                          SizedBox(width: getWidth(20)),
                          Text(
                            'Rakib Hossain',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // student name
                      Row(
                        children: [
                          Text(
                            'Intake',
                            style: TextStyle(color: AppColors.greyColor),
                          ),
                          SizedBox(width: getWidth(20)),
                          Text(
                            'June 2025',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // dot divider
                      Row(
                        children: List.generate(
                          150 ~/ 2,
                          (index) => Expanded(
                            child: Container(
                              color:
                                  index % 2 == 0
                                      ? Colors.transparent
                                      : AppColors.greyColor,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // tuition scholarship application fee
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.money_outlined,
                                color: AppColors.tealColor,
                                size: getWidth(40),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Tuition fees',
                                style: TextStyle(color: AppColors.greyColor),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '\$28,640',
                                style: TextStyle(
                                  color: AppColors.blackColor.withAlpha(200),
                                  fontSize: getWidth(20),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.school_outlined,
                                color: AppColors.tealColor,
                                size: getWidth(40),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Scholarship',
                                style: TextStyle(color: AppColors.greyColor),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '10% or \$5000',
                                style: TextStyle(
                                  color: AppColors.blackColor.withAlpha(200),
                                  fontSize: getWidth(20),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.handshake_outlined,
                                color: AppColors.tealColor,
                                size: getWidth(40),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Application fees',
                                style: TextStyle(color: AppColors.greyColor),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '\$00 Dollar',
                                style: TextStyle(
                                  color: AppColors.blackColor.withAlpha(200),
                                  fontSize: getWidth(20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // dot divider
                      Row(
                        children: List.generate(
                          150 ~/ 2,
                          (index) => Expanded(
                            child: Container(
                              color:
                                  index % 2 == 0
                                      ? Colors.transparent
                                      : AppColors.greyColor,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // application deadline
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getWidth(10)),
                          border: Border.all(
                            color: AppColors.greyColor.withAlpha(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Application Deadline",
                                  style: TextStyle(
                                    color: AppColors.blackColor.withAlpha(150),
                                    fontSize: getWidth(17),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(width: getWidth(10)),
                                ),
                                TextSpan(
                                  text: "10 Feb, 2025",
                                  style: TextStyle(
                                    color: AppColors.blackColor.withAlpha(150),
                                    fontWeight: FontWeight.bold,
                                    fontSize: getWidth(17),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // course start date
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getWidth(10)),
                          border: Border.all(
                            color: AppColors.greyColor.withAlpha(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Course Start Date",
                                  style: TextStyle(
                                    color: AppColors.blackColor.withAlpha(150),
                                    fontSize: getWidth(17),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(width: getWidth(10)),
                                ),
                                TextSpan(
                                  text: "25 Mar 2025",
                                  style: TextStyle(
                                    color: AppColors.blackColor.withAlpha(150),
                                    fontWeight: FontWeight.bold,
                                    fontSize: getWidth(17),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // course duration
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.access_time_rounded,
                                  size: getWidth(20),
                                ),
                              ),
                              TextSpan(
                                text: "Duration",
                                style: TextStyle(
                                  color: AppColors.blackColor.withAlpha(150),
                                  fontSize: getWidth(17),
                                ),
                              ),
                              WidgetSpan(child: SizedBox(width: getWidth(10))),
                              TextSpan(
                                text: "4 Years",
                                style: TextStyle(
                                  color: AppColors.blackColor.withAlpha(150),
                                  fontWeight: FontWeight.bold,
                                  fontSize: getWidth(17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // course duration
                      Obx(
                        () => DropDownWidget(
                          filterScreenController: filterScreenController,
                          titleText: "Course Duration",
                          value: filterScreenController.selectedDuration.value,
                          valueChanged:
                              (value) =>
                                  filterScreenController.updateDuration(value),
                          availableList:
                              filterScreenController.availableDuration,
                        ),
                      ),
                      SizedBox(height: 20),
                      // campus location
                      Obx(
                        () => DropDownWidget(
                          isContainered: false,
                          filterScreenController: filterScreenController,
                          titleText: "Campus City",
                          value: filterScreenController.selectedCity.value,
                          valueChanged:
                              (value) =>
                                  filterScreenController.updateCity(value),
                          availableList: filterScreenController.availableCities,
                        ),
                      ),
                      SizedBox(height: 10),

                      // apply now button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.tealColor.withAlpha(200),
                        ),
                        onPressed: () {
                          Get.find<NavBarController>().selectedIndex.value =
                              3; //
                          Get.back();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Apply Now",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
