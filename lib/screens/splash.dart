import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/screens/login.dart';
import 'package:resturant_app/screens/register.dart';
import 'package:resturant_app/widgets/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) {
    //       return const LoadingScreen();
    //     }),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45.h),
            SizedBox(
              width: 195.w,
              height: 135.h,
              child: Image.asset(AppImages.logo),
            ),
            SizedBox(height: 48.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Container(
                width: 313.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.orange,
                ),
                child: Center(
                  child: AppText(
                    text: "Prihlásiť sa",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              child: Container(
                width: 313.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                      color: AppColors.lightOrange,
                    )),
                child: Center(
                  child: AppText(
                    text: "Vytvoriť účet",
                    fontSize: 24.sp,
                    color: AppColors.yellow,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Image.asset(
              AppImages.splashBackground,
              //  height: 450.h,
              width: 375.w,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
