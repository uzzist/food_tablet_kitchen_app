import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/values/styles/styles.dart';

Widget CustomRichText(BuildContext context, String title, String text) {
  return Padding(
    padding: EdgeInsets.only(left: 20.w),
    child: RichText(text: TextSpan(
        text: '$title:    ',
        style: kSize18DarkW500Text.copyWith(
            fontSize: 11.sp,
            fontWeight: FontWeight.normal
        ),
        children: [
          TextSpan(
            text: '$text',
            style: kSize18DarkW500Text.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.normal
            ),
          )
        ]
    )),
  );
}