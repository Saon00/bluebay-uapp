import 'package:bluebay_uapp/app/bindings/app_bindings.dart';
import 'package:bluebay_uapp/app/core/app_size.dart';
import 'package:bluebay_uapp/app/core/colors.dart';
import 'package:bluebay_uapp/app/modules/home/screen/home_screen.dart';
import 'package:bluebay_uapp/app/modules/mainNavBar/screen/main_navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
        fontFamily: 'Poppins'
      ),
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      home: MainNavbarScreen(),
    );
  }
}
