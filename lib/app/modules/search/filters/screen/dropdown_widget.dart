import 'package:flutter/material.dart';

import '../../../../core/app_size.dart';
import '../../../../core/colors.dart';
import '../controller/filter_screen_controller.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.filterScreenController,
    required this.titleText,
    required this.value,
    required this.valueChanged,
    this.isContainered = true,
  });

  final FilterScreenController filterScreenController;
  final String titleText;
  final String value;
  final ValueChanged valueChanged;
  final bool isContainered;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getWidth(10)),
        border:
            isContainered
                ? Border.all(color: AppColors.greyColor.withAlpha(100))
                : null,
      ),
      child: Padding(
        padding:
            isContainered
                ? EdgeInsets.all(getWidth(10))
                : EdgeInsets.all(getWidth(0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text
            Text(titleText, style: TextStyle(fontSize: getWidth(20))),
            SizedBox(height: getWidth(15)),

            // dropdown container
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getWidth(10)),
                border: Border.all(color: AppColors.greyColor.withAlpha(100)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value,
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    iconSize: getWidth(35),
                    // style: TextStyle(
                    //   color: AppColors.greyColor.withAlpha(100),
                    //   fontSize: getWidth(20),
                    // ),
                    onChanged: valueChanged,
                    items:
                        filterScreenController.availableCountries
                            .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            .toList(),
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
