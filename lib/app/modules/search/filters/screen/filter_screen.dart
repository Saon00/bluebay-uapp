import 'package:bluebay_uapp/app/modules/search/filters/controller/filter_screen_controller.dart';
import 'package:bluebay_uapp/app/modules/search/filters/model/filter_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_size.dart';
import '../../../../core/colors.dart';
import 'dropdown_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FilterScreenController filterScreenController = Get.put(
      FilterScreenController(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(getWidth(9)),
          child: CircleAvatar(
            maxRadius: getWidth(15),
            backgroundColor: AppColors.greyColor.withAlpha(80),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
              color: AppColors.blackColor,
              splashColor: Colors.transparent,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // country
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(20),
                right: getWidth(20),
                top: getWidth(20),
              ),
              child: Obx(
                () => DropDownWidget(
                  isContainered: false,
                  filterScreenController: filterScreenController,
                  titleText: "Country",
                  value: filterScreenController.selectedCountry.value,
                  valueChanged:
                      (value) => filterScreenController.updateCountry(value),
                  availableList: filterScreenController.availableCountries,
                ),
              ),
            ),

            // city
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(20),
                right: getWidth(20),
                top: getWidth(20),
              ),
              child: Obx(
                () => DropDownWidget(
                  isContainered: false,
                  filterScreenController: filterScreenController,
                  titleText: "Campus City",
                  value: filterScreenController.selectedCity.value,
                  valueChanged:
                      (value) => filterScreenController.updateCity(value),
                  availableList: filterScreenController.availableCities,
                ),
              ),
            ),

            // tuition fees
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(20),
                right: getWidth(20),
                top: getWidth(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tuition fee', style: TextStyle(fontSize: getWidth(20))),
                  SizedBox(height: getWidth(15)),
                  Row(
                    children: [
                      // Container
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getWidth(10)),
                          border: Border.all(
                            color: AppColors.greyColor.withAlpha(100),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getWidth(10),
                            vertical: getWidth(5),
                          ),
                          child: Obx(
                            () => RichText(
                              text: TextSpan(
                                children: [
                                  // text
                                  TextSpan(
                                    text: "Max  ",
                                    style: TextStyle(
                                      fontSize: getWidth(18),
                                      color: AppColors.greyColor.withAlpha(100),
                                    ),
                                  ),

                                  // amount
                                  TextSpan(
                                    text:
                                        "\$${filterScreenController.currentAmount.toInt()}",
                                    style: TextStyle(
                                      fontSize: getWidth(20),
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      // slider
                      Expanded(
                        child: Obx(
                          () => Slider(
                            value: filterScreenController.currentAmount.value,
                            min: FilterScreenSliderModel.minAmount,
                            max: FilterScreenSliderModel.maxAmount,
                            activeColor: AppColors.tealColor,
                            inactiveColor: AppColors.tealColor.withAlpha(100),
                            divisions: 7,
                            onChanged: filterScreenController.updateAmount,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // course duration
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(20),
                right: getWidth(20),
                top: getWidth(20),
              ),
              child: Obx(
                () => DropDownWidget(
                  filterScreenController: filterScreenController,
                  titleText: "Course Duration",
                  value: filterScreenController.selectedDuration.value,
                  valueChanged:
                      (value) => filterScreenController.updateDuration(value),
                  availableList: filterScreenController.availableDuration,
                ),
              ),
            ),

            // delivery pattern
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(20),
                right: getWidth(20),
                top: getWidth(20),
              ),

              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getWidth(10)),
                  border: Border.all(color: AppColors.greyColor.withAlpha(100)),
                ),

                child: Padding(
                  padding: EdgeInsets.all(getWidth(10)),
                  child: Column(
                    children: [
                      // title text
                      Row(
                        children: [
                          Icon(
                            Icons.timelapse_outlined,
                            color: AppColors.blackColor.withAlpha(400),
                          ),
                          SizedBox(width: getWidth(10)),
                          Text(
                            "Delivery pattern",
                            style: TextStyle(
                              color: AppColors.blackColor.withAlpha(400),
                              fontWeight: FontWeight.w400,
                              fontSize: getWidth(18),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: getWidth(20)),

                      // check boxes
                      Obx(
                        () => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              filterScreenController.deliveryPatterns.asMap().entries.map((
                                entry,
                              ) {
                                int index = entry.key;
                                DeliveryPatternModel pattern = entry.value;

                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom: getWidth(10),
                                    right: getWidth(20),
                                  ),
                                  child: GestureDetector(
                                    onTap:
                                        () => filterScreenController
                                            .selectedPattern(
                                              index,
                                            ), // Call selectPattern
                                    child: Row(
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: getWidth(24),
                                          height: getWidth(24),
                                          child: Checkbox(
                                            side: BorderSide(
                                              color: AppColors.greyColor.withAlpha(700)
                                            ),
                                            value: pattern.isSelected,
                                            onChanged: (bool? newValue) {
                                              if (newValue == true) {
                                                filterScreenController
                                                    .selectedPattern(index);
                                              }
                                            },

                                            activeColor: AppColors.tealColor,
                                            checkColor: AppColors.whiteColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    getWidth(4),
                                                  ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: getWidth(5)),
                                        Text(
                                          pattern.name,
                                          style: TextStyle(
                                            fontSize: getWidth(16),
                                            color: AppColors.greyColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
