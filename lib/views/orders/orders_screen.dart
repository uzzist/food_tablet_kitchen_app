import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_kitchen_app/utils/extensions/extensions.dart';
import 'package:food_tablet_kitchen_app/utils/values/styles/styles.dart';

import '../../utils/values/app_colors/app_colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Orders', style: kSize20DarkW500Text.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.white
        ),),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            40.sbh,
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,3),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.black.withOpacity(.08)
                  )
                ]
              ),
              child: TabBar(
                labelStyle: kSize18DarkW500Text,
                  indicatorColor: AppColors.primary,
                  indicatorSize: TabBarIndicatorSize.tab,
                  physics: NeverScrollableScrollPhysics(),
                  tabs: [
                    Tab(
                      text: 'Pending Orders',
                    ),
                    Tab(
                      text: 'In Progress',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                  ]
              ),
            ),
            Expanded(child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
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
                          RichText(text: TextSpan(
                            text: 'Customer name:    ',
                            style: kSize18DarkW500Text.copyWith(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.normal
                            ),
                            children: [
                              TextSpan(
                                text: 'Talha Anas',
                                style: kSize18DarkW500Text.copyWith(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.normal
                                ),
                              )
                            ]
                          )),
                          13.sbh,
                          RichText(text: TextSpan(
                              text: 'Customer number:    ',
                              style: kSize18DarkW500Text.copyWith(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal
                              ),
                              children: [
                                TextSpan(
                                  text: '+92 32456789',
                                  style: kSize18DarkW500Text.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ]
                          )),
                          13.sbh,
                          RichText(text: TextSpan(
                              text: 'Punch time:    ',
                              style: kSize18DarkW500Text.copyWith(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal
                              ),
                              children: [
                                TextSpan(
                                  text: '5:32 pm',
                                  style: kSize18DarkW500Text.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ]
                          )),
                          13.sbh,
                          RichText(text: TextSpan(
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
                          13.sbh,
                          RichText(text: TextSpan(
                              text: 'Item count:    ',
                              style: kSize18DarkW500Text.copyWith(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal
                              ),
                              children: [
                                TextSpan(
                                  text: '02',
                                  style: kSize18DarkW500Text.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ]
                          )),
                          13.sbh,
                          RichText(text: TextSpan(
                              text: 'Item amount:    ',
                              style: kSize18DarkW500Text.copyWith(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal
                              ),
                              children: [
                                TextSpan(
                                  text: '02',
                                  style: kSize18DarkW500Text.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ]
                          )),
                          13.sbh,
                          Row(
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
                          Text('1x Special Chicken Burger', style: kSize18DarkW500Text.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.pink
                          ),),
                          18.sbh,

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(),
                SizedBox(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
