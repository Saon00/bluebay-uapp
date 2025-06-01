import 'package:bluebay_uapp/app/modules/search/filters/controller/filter_screen_controller.dart';
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
