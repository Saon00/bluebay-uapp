import 'package:bluebay_uapp/app/core/app_size.dart';
import 'package:bluebay_uapp/app/core/colors.dart';
import 'package:bluebay_uapp/app/modules/application/model/application_model.dart';
import 'package:flutter/material.dart';

import '../../../core/images.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          "Application",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.whiteColor,
      ),

      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        // physics: ScrollPhysics(), // both are default value
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getWidth(20)),

            // active or cancelled card
            SizedBox(
              width: double.infinity,
              height: getWidth(40),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: ApplicationStatusModel.applicationStatus.length,
                itemBuilder:
                    (builder, i) =>
                        Padding(
                      padding: EdgeInsets.only(left: getWidth(15)),
                      child:
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getWidth(20)),
                          color:
                              ApplicationStatusModel
                                          .applicationStatus[i]
                                          .status ==
                                      "Active"
                                  ? AppColors.tealColor.withAlpha(30)
                                  : AppColors.greyColor.withAlpha(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getWidth(15),
                          ),
                          child: Row(
                            children: [
                              Text(
                                ApplicationStatusModel
                                    .applicationStatus[i]
                                    .status,
                                style: TextStyle(
                                  fontSize: getWidth(15),
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: getWidth(10)),
                              CircleAvatar(
                                radius: getWidth(12),
                                backgroundColor:
                                    ApplicationStatusModel
                                                .applicationStatus[i]
                                                .status ==
                                            "Active"
                                        ? AppColors.tealColor.withAlpha(100)
                                        : AppColors.whiteColor.withAlpha(100),
                                child: Text(
                                  "${ApplicationStatusModel.applicationStatus[i].statusCount}",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              ),
            ),

            SizedBox(height: getWidth(20)),

            // Status Containers
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getWidth(15),
                    vertical: getWidth(10),
                  ),
                  child: ApplicationStatusWidget(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ApplicationStatusWidget extends StatelessWidget {
  const ApplicationStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(getWidth(20)),
      splashColor: Colors.teal.shade50,
      onTap: () {},
      child: Container(
        height: getWidth(145),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getWidth(20)),
          border: Border.all(color: AppColors.greyColor.withAlpha(100)),
        ),

        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(15),
                vertical: getWidth(10),
              ),
              child: Expanded(
                child: Text(
                  'BA (Hons) International Business Pathways with Foundation Year',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(15),
                vertical: getWidth(10),
              ),
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.analysis, height: getWidth(40)),
                  SizedBox(width: getWidth(10)),
                  Expanded(
                    child: Text(
                      'University of the West of Scotland London',
                      style: TextStyle(
                        color: AppColors.greyColor.withAlpha(200),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: getWidth(10)),

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getWidth(20)),
                          color: AppColors.greyColor.withAlpha(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getWidth(10),
                            vertical: getWidth(5)
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Pending",
                                style: TextStyle(
                                  fontSize: getWidth(15),
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: getWidth(5)),
                      Text(
                        '01 June 2025',
                        style: TextStyle(
                          color: AppColors.greyColor.withAlpha(200),
                        ),

                      ),
                    ],
                  )

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
