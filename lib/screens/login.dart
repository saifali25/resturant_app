import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/screens/main_page.dart';
import 'package:resturant_app/widgets/app_text_form.dart';

import '../widgets/app_text.dart';
import 'register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  top: 228.h,
                  bottom: 20.h,
                  left: 26.w,
                  right: 26.w,
                  child: Container(
                    width: 372.w,
                    height: 650.h,
                    decoration: BoxDecoration(
                        color: const Color(0xfffef8f8),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        children: [
                          SizedBox(height: 40.h),
                          AppText(
                            text: "Prihlásiť sa",
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(height: 20.h),
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
                          SizedBox(height: 35.h),
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
                            alignment: Alignment.centerRight,
                            child: AppText(
                              text: "Zabudol si heslo?",
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 35.h),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainMenu())),
                            child: Container(
                              width: 325.w,
                              height: 59.h,
                              decoration: BoxDecoration(
                                  color: AppColors.orange,
                                  borderRadius: BorderRadius.circular(25.r)),
                              child: Center(
                                child: AppText(
                                  text: "Prihlásiť sa",
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 7.h),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen())),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Ešte u nás nemáte účet? ",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  )),
                              TextSpan(
                                  text: "Vytvorte ho teraz",
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
