import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/screens/skener_two.dart';
import 'package:resturant_app/widgets/app_text.dart';

class PivoZdarma extends StatelessWidget {
  const PivoZdarma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Center(
              child: AppText(
                text: "5+1 Pivo Zdarma",
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 12.h),
            Center(
              child: Image.asset(
                AppImages.beer,
                width: 290.w,
                height: 324.h,
              ),
            ),
            SizedBox(height: 26.h),
            Container(
              width: 375.w,
              height: 311.h,
              decoration: BoxDecoration(
                  color: AppColors.lightOrange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.r),
                    bottomRight: Radius.circular(35.r),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 22.h),
                  Container(
                    width: 266.w,
                    height: 67.h,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.beerFilled),
                              Image.asset(AppImages.checkIcon),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.beerFilled),
                              Image.asset(AppImages.checkIcon),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.beerTransparent),
                              SizedBox(height: 10.h),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.beerTransparent),
                              SizedBox(height: 10.h),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.beerTransparent),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11.h),
                  AppText(
                    text: "2/5",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 10.sp),
                  AppText(
                    text: "Pri objednávke ukážte QR kód čašníkovi",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 10.sp),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SkenerTwo()));
                      },
                      child: Image.asset(AppImages.qr)),
                  SizedBox(height: 13.h),
                  AppText(
                    text: "58-59-60",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
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
