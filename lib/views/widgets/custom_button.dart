import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/values/app_colors/app_colors.dart';
import '../../utils/values/styles/styles.dart';

class CustomButton extends StatelessWidget {
  final Color? textColor;
  final Color? backgroundColor;
  final String text;

  CustomButton({this.backgroundColor, this.textColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 157.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.r),
            topRight: Radius.circular(32.r),
            bottomLeft: Radius.circular(32.r),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.05),
              offset: Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ],
      ),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.r),
                topRight: Radius.circular(32.r),
                bottomLeft: Radius.circular(32.r),
              ),// Set the border radius here
            ),
          ),
          onPressed: () {},
          child: Center(
            child: Text(
              text,
              style: kSize18DarkW500Text.copyWith(
                color: textColor ?? AppColors.white,
                fontSize: 13.sp,
              ),
            ),
          )),
    );
  }
}
