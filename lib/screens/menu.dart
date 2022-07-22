// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/widgets/app_text.dart';

class DenneMenu extends StatefulWidget {
  const DenneMenu({Key? key}) : super(key: key);

  @override
  State<DenneMenu> createState() => _DenneMenuState();
}

class _DenneMenuState extends State<DenneMenu> {
  bool isExpanded = false;

  bool isPondelokExpanded = false;
  bool isUtorokExpanded = false;
  bool isStredaExpanded = false;
  bool isStvrtokExpanded = false;
  bool isPiatokExpanded = false;

  List mainText = [
    "Pondelok",
    "Utorok",
    "Streda",
    "Štvrtok",
    "Piatok",
  ];

  List date = [
    "2.5.2022",
    "3.5.2022",
    "4.5.2022",
    "5.5.2022",
    "6.5.2022",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.infoIcon),
                  SizedBox(width: 23.w),
                  AppText(
                    text: "Denné menu",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: 23.w),
                  Image.asset(AppImages.glutenFreeIcon),
                ],
              ),
              SizedBox(height: 11.h),
              AppText(
                text: "2.5. - 6.5",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isPondelokExpanded = !isPondelokExpanded;
                    });
                  },
                  child: menuItem(isPondelokExpanded, mainText[0], date[0])),
              SizedBox(height: 18.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isUtorokExpanded = !isUtorokExpanded;
                    });
                  },
                  child: menuItem(isUtorokExpanded, mainText[1], date[1])),
              SizedBox(height: 18.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isStredaExpanded = !isStredaExpanded;
                    });
                  },
                  child: menuItem(isStredaExpanded, mainText[2], date[2])),
              SizedBox(height: 18.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isStvrtokExpanded = !isStvrtokExpanded;
                    });
                  },
                  child: menuItem(isStvrtokExpanded, mainText[3], date[3])),
              SizedBox(height: 18.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isPiatokExpanded = !isPiatokExpanded;
                    });
                  },
                  child: menuItem(isPiatokExpanded, mainText[4], date[4])),
            ],
          ),
        ),
      ),
    );
  }

  Container menuItem(
    bool isExpanded,
    String mainText,
    String subText,
  ) {
    return Container(
      width: 269.w,
      height: isExpanded ? 245.h : 63.h,
      decoration: BoxDecoration(
          color: AppColors.lightOrange,
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppText(
            text: mainText,
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
          ),
          isExpanded
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      text: subText,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(width: 5.w),
                    Image.asset(AppImages.glutenFreeIcon),
                    SizedBox(width: 3.w),
                    AppText(
                      text: "1,3,7",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                )
              : AppText(
                  text: subText,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
          isExpanded ? SizedBox(height: 12.h) : const SizedBox(),
          isExpanded
              ? SizedBox(
                  height: 140.h,
                  width: 269.w,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          AppImages.mealImage,
                          fit: BoxFit.fitHeight,
                          height: 140.h,
                          width: 269.w,
                        ),
                      ),
                      Positioned(
                        top: 80.h,
                        left: 20.w,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                        ),
                      ),
                      Positioned(
                        top: 80.h,
                        left: 240.w,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.white,
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(AppImages.tag))
                    ],
                  ),
                )
              : const SizedBox(),
          isExpanded
              ? Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.black),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      )),
                  width: 269.w,
                  height: 45.h,
                  child: Center(
                    child: AppText(
                      text: "Kuracie prsia na smotane s ryžou a hranolkami",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
