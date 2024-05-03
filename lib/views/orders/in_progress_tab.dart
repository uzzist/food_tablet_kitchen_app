import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_kitchen_app/utils/extensions/extensions.dart';
import 'package:food_tablet_kitchen_app/utils/values/styles/styles.dart';
import 'package:food_tablet_kitchen_app/views/widgets/custom_button.dart';
import 'package:food_tablet_kitchen_app/views/widgets/orders/custom_richText.dart';

import '../../utils/values/app_colors/app_colors.dart';

class InProgressTab extends StatelessWidget {
  const InProgressTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 262.w,
          margin: EdgeInsets.only(right: 10.w, top: 20.h, bottom: 20.h),
          decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0,3),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.black.withOpacity(0.08)
                )
              ],
              borderRadius: BorderRadius.circular(32.r)
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.sbh,
                Center(
                  child: Text('786', style: kSize24DarkW500Text.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.normal,
                      color: AppColors.radical_red
                  ),),
                ),
                13.sbh,
                Container(
                  height: 46.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0,3),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: AppColors.black.withOpacity(.05)
                        )
                      ]
                  ),
                  child: Center(
                    child: Text('Order Details', style: kSize18DarkW500Text.copyWith(
                        color: AppColors.primary
                    ),),
                  ),
                ),
                13.sbh,
                CustomRichText(context, 'Customer Name', 'Talha Anas'),
                13.sbh,
                CustomRichText(context, 'Customer Number', '+92 3214567325'),
                13.sbh,
                CustomRichText(context, 'Punch time', '5:32 pm'),
                13.sbh,
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: RichText(text: TextSpan(
                      text: 'Delivery time:    ',
                      style: kSize18DarkW500Text.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.normal
                      ),
                      children: [
                        TextSpan(
                          text: 'As soon as possible',
                          style: kSize18DarkW500Text.copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                              color: AppColors.red
                          ),
                        )
                      ]
                  )),
                ),
                13.sbh,
                CustomRichText(context, 'Item amount', '02'),
                13.sbh,
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Special note:    ', style: kSize18DarkW500Text.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.normal
                      ),),
                      Expanded(
                        child: Text('Use less oil and make on low fire', style: kSize18DarkW500Text.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.green,
                        ),),
                      )
                    ],
                  ),
                ),
                16.sbh,
                Container(
                  height: 46.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0,3),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: AppColors.black.withOpacity(.05)
                        )
                      ]
                  ),
                  child: Center(
                    child: Text('Item Details', style: kSize18DarkW500Text.copyWith(
                        color: AppColors.primary
                    ),),
                  ),
                ),
                13.sbh,
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text('1x Special Chicken Burger', style: kSize18DarkW500Text.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.pink
                  ),),
                ),
                28.sbh,
                CustomRichText(context, 'Type', 'Plain'),
                13.sbh,
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Condiments:    ', style: kSize18DarkW500Text.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.normal
                      ),),
                      Expanded(
                        child: Text('Salade, Tomate, Oignon, Cheddar, Oignons Frits', style: kSize18DarkW500Text.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),),
                      )
                    ],
                  ),
                ),
                13.sbh,
                CustomRichText(context, 'Sauces', 'Bigy Burgers, Hannibal'),
                13.sbh,
                CustomRichText(context, 'Formulae', 'Frites, Poms'),
                13.sbh,
                CustomRichText(context, 'Extras', 'Poulet Fume Lardens'),
                13.sbh,
                CustomRichText(context, 'Viands', 'Vianda Hacher, Poulet Pane'),
                18.sbh,
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text('1x Special Chicken Burger', style: kSize18DarkW500Text.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.pink
                  ),),
                ),
                28.sbh,
                CustomRichText(context, 'Type', 'Plain'),
                13.sbh,
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Condiments:    ', style: kSize18DarkW500Text.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.normal
                      ),),
                      Expanded(
                        child: Text('Salade, Tomate, Oignon, Cheddar, Oignons Frits', style: kSize18DarkW500Text.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),),
                      )
                    ],
                  ),
                ),
                30.sbh,
                Center(child: CustomButton(text: 'Ready for Pickup')),
                10.sbh,
                Center(child: CustomButton(text: 'Decline', backgroundColor: AppColors.white, textColor: AppColors.primary,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}