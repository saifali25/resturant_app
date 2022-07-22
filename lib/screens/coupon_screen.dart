import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/screens/hovad.dart';
import 'package:resturant_app/widgets/app_text.dart';

import '../constants/colors.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r),
              ),
            ),
            child: Stack(
              children: [
                Image.asset(
                  AppImages.couponBackgroundImage,
                  width: 375.w,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  left: 20.w,
                  top: 20.h,
                  child: Image.asset(AppImages.menuIcon),
                ),
                Positioned(
                  top: 100.h,
                  left: 20.w,
                  child: AppText(
                    text: "Zľavové kupóny",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                Positioned(
                    left: 200.w,
                    top: 50.h,
                    child: Image.asset(AppImages.couponGroupImage)),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100.w,
                height: 31.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black, width: 1.5.w),
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.lightOrange,
                ),
                child: Center(
                  child: AppText(
                    text: "Celá ponuka",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 100.w,
                height: 31.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black, width: 1.5.w),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: AppText(
                    text: "Hamburgery",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 100.w,
                height: 31.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black, width: 1.5.w),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: AppText(
                    text: "S hranolkami",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          /// Grid
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 37.w,
                  mainAxisSpacing: 27.h,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.4),
                ),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HovadScreen()));
                  },
                  child: Container(
                    width: 160.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.black,
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        Container(
                          height: 140.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.r),
                              bottomRight: Radius.circular(15.r),
                            ),
                            image: const DecorationImage(
                              image: AssetImage(AppImages.cardBackground),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20.h,
                                left: 20.w,
                                child: Image.asset(
                                  AppImages.coca,
                                  width: 73.w,
                                ),
                              ),
                              Positioned(
                                top: 30.h,
                                left: 50.w,
                                child: Image.asset(
                                  AppImages.burger,
                                  width: 98.w,
                                ),
                              ),
                              Positioned(
                                left: 70.w,
                                child: Image.asset(
                                  AppImages.couponTag,
                                  width: 71.544.w,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),
                        AppText(
                          text: "Hovädzí Burger\n+ 0,5l Coca Cola",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
