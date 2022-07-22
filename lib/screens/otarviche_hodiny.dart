import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';

import '../widgets/app_text.dart';

class OtvaracieHodiny extends StatelessWidget {
  const OtvaracieHodiny({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          Center(
            child: AppText(
              text: "Otváracie hodiny",
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 33.h),
          AppText(
            text: "Reštaurácia",
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 19.h),
          AppText(
            text: "Pondelok - Streda",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 10.h),
          AppText(
            text: "10:00 - 23:00",
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 19.h),
          AppText(
            text: "Štvrtok - Piatok",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 10.h),
          AppText(
            text: "10:00 - 23:00",
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 19.h),
          AppText(
            text: "Sobota - Nedeľa",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          AppText(
            text: "10:00 - 23:00",
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 40.h),
          AppText(
            text: "Bar",
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 19.h),
          AppText(
            text: "Pondelok - Piatok",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 7.h),
          AppText(
            text: "9:00 - 22:00",
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      )),
    );
  }
}
