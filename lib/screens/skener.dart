import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/screens/coupon_screen.dart';
import 'package:resturant_app/screens/main_page.dart';

import '../constants/images.dart';
import '../widgets/app_text.dart';

class Skener extends StatelessWidget {
  const Skener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 58.1.h),
            AppText(
              text: "Skener",
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 25.9.h),
            SizedBox(
                width: 375.w,
                height: 300.h,
                child: Image.asset(
                  AppImages.camera2,
                  fit: BoxFit.fitWidth,
                )),
            SizedBox(height: 37.h),
            Image.asset(
              AppImages.burgerChips,
            ),
            SizedBox(height: 25.h),
            Align(
              alignment: Alignment.center,
              child: AppText(
                  text: "     Hovädzí burger\n + stredné hranolky",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 50.h),
            Image.asset(AppImages.qr),
            SizedBox(height: 45.h),
            GestureDetector(
              onTap: () {
                //Going back to Main Page
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MainMenu()));
              },
              child: Container(
                width: 288.513.w,
                height: 53.761.h,
                decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Center(
                  child: AppText(
                    text: "Potvrdiť",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 45.h),
          ],
        ),
      ),
    );
  }
}
