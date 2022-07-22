import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/screens/skener.dart';
import 'package:resturant_app/screens/skener_two.dart';
import 'package:resturant_app/widgets/app_text.dart';

class HovadScreen extends StatelessWidget {
  const HovadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 62.h),
            Image.asset(AppImages.burgerChips),
            SizedBox(height: 37.4.h),
            Align(
              alignment: Alignment.center,
              child: AppText(
                  text: "     Hovädzí burger\n + stredné hranolky",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 69.h),
            AppText(
              text: "Ponuka platí každý deň od 15:30.",
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 50.h),
            Image.asset(AppImages.qr),
            SizedBox(height: 50.h),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Skener()));
              },
              child: Container(
                width: 267.774.w,
                height: 69.121.h,
                decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: AppText(
                    text: "UPLATNIŤ",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
