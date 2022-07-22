import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/colors.dart';

class AppTextFormField extends StatefulWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final bool isPassword;
  final FontWeight? fontWeight;
  final TextInputType? keyboardType;
  final bool? isDense;

  const AppTextFormField({
    Key? key,
    required this.hintText,
    this.hintStyle,
    this.isPassword = false,
    this.fontWeight,
    this.keyboardType,
    this.isDense,
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorWidth: 1,
              cursorColor: Colors.white,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 18.sp,
                fontWeight: widget.fontWeight,
              ),
              obscureText: isPasswordVisible,
              obscuringCharacter: "*",
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                isDense: widget.isDense,
                //contentPadding: const EdgeInsets.all(10),
                hintText: widget.hintText,
                //border: InputBorder.none,
                hintStyle: widget.hintStyle ??
                    TextStyle(
                      color: AppColors.black,
                      fontWeight: widget.fontWeight,
                    ),
              ),
            ),
          ),
          if (widget.isPassword) SizedBox(width: 0.w),
          if (widget.isPassword)
            GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              child: Icon(
                isPasswordVisible
                    ? CupertinoIcons.eye_slash
                    : CupertinoIcons.eye,
                color: AppColors.grey,
                size: 18.sp,
              ),
            ),
          if (widget.isPassword) SizedBox(width: 0.w)
        ],
      ),
    );
  }
}
