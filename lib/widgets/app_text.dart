import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'SFProDisplay',
        fontSize: fontSize ?? 16.sp,
        fontWeight: fontWeight,
        color: color ?? AppColors.black,
      ),
    );
  }
}
