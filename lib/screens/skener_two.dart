import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/screens/main_page.dart';

import '../constants/images.dart';
import '../widgets/app_text.dart';

class SkenerTwo extends StatefulWidget {
  const SkenerTwo({Key? key}) : super(key: key);

  @override
  State<SkenerTwo> createState() => _SkenerTwoState();
}

class _SkenerTwoState extends State<SkenerTwo> {
  int counterValue = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
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
                    AppImages.camera1,
                    fit: BoxFit.fitWidth,
                  )),
              SizedBox(height: 37.h),
              Align(
                alignment: Alignment.center,
                child: AppText(
                    text: "5 + 1 Pivo Zdarma",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700),
              ),
              Align(
                alignment: Alignment.center,
                child: AppText(
                    text: "Typ QR kódu",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 62.1.h),
              Align(
                alignment: Alignment.center,
                child: AppText(
                    text: "Počet ks",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 11.3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        //Decrement Counter
                        setState(() {
                          counterValue = counterValue - 1;
                        });
                      },
                      child: Image.asset(AppImages.minus)),
                  Container(
                    width: 165.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Center(
                      child: AppText(
                        text: counterValue.toString(),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        //Increment Counter
                        setState(() {
                          counterValue = counterValue + 1;
                        });
                      },
                      child: Image.asset(AppImages.plus)),
                ],
              ),
              SizedBox(height: 45.h),
              GestureDetector(
                onTap: () {
                  //Temp Naviagtion
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenu()));
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
      ),
    );
  }
}
