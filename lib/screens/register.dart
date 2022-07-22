import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/login.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../widgets/app_text.dart';
import '../widgets/app_text_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(AppImages.logo),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      AppImages.bgLayersGroup,
                      width: 375.w,
                      fit: BoxFit.fitWidth,
                    )),
                Positioned(
                  top: 150.h,
                  bottom: 20.h,
                  left: 26.w,
                  right: 26.w,
                  child: Container(
                    width: 372.w,
                    height: 670.h,
                    decoration: BoxDecoration(
                        color: const Color(0xfffef8f8),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        children: [
                          SizedBox(height: 15.h),
                          AppText(
                            text: "Vytvor si účet",
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(height: 15.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              text: "Meno",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const AppTextFormField(
                            isDense: true,
                            hintText: "Beverly",
                            fontWeight: FontWeight.w700,
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(height: 15.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              text: "Priezvisko",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const AppTextFormField(
                            isDense: true,
                            hintText: "Schneider",
                            fontWeight: FontWeight.w700,
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(height: 15.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              text: "Email",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const AppTextFormField(
                            isDense: true,
                            hintText: "adam.hladny@gmail.com",
                            fontWeight: FontWeight.w700,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 15.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              text: "Heslo",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const AppTextFormField(
                            isDense: true,
                            isPassword: true,
                            hintText: "*******",
                            fontWeight: FontWeight.w700,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppText(
                              text: "Potvrďte heslo",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const AppTextFormField(
                            isDense: true,
                            isPassword: true,
                            hintText: "*******",
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(height: 20.h),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen())),
                            child: Container(
                              width: 325.w,
                              height: 59.h,
                              decoration: BoxDecoration(
                                  color: AppColors.orange,
                                  borderRadius: BorderRadius.circular(25.r)),
                              child: Center(
                                child: AppText(
                                  text: "Registrovať",
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 7.h),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen())),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Máte už účet? ",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  )),
                              TextSpan(
                                  text: " Prihlásiť sa",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ])),
                          ),
                          SizedBox(height: 7.h),
                          IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  color: AppColors.black,
                                  height: 1.h,
                                  width: 67.w,
                                ),
                                AppText(
                                  text: " alebo ",
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                Container(
                                  color: AppColors.black,
                                  height: 1.h,
                                  width: 67.w,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AppImages.facebook),
                              SizedBox(width: 21.w),
                              Image.asset(AppImages.google),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
