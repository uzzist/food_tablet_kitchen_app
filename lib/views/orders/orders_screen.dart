import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_kitchen_app/utils/extensions/extensions.dart';
import 'package:food_tablet_kitchen_app/utils/values/styles/styles.dart';
import 'package:food_tablet_kitchen_app/views/orders/completed_orders_tab.dart';
import 'package:food_tablet_kitchen_app/views/orders/in_progress_tab.dart';
import 'package:food_tablet_kitchen_app/views/orders/pending_orders_tab.dart';
import 'package:food_tablet_kitchen_app/views/widgets/custom_button.dart';
import 'package:food_tablet_kitchen_app/views/widgets/orders/custom_richText.dart';

import '../../utils/values/app_colors/app_colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Orders',
          style: kSize20DarkW500Text.copyWith(
              fontWeight: FontWeight.bold, color: AppColors.white),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            40.sbh,
            Container(
              decoration: BoxDecoration(color: AppColors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: AppColors.black.withOpacity(.08))
              ]),
              child: TabBar(
                  labelStyle: kSize18DarkW500Text,
                  indicatorColor: AppColors.primary,
                  indicatorSize: TabBarIndicatorSize.tab,
                  physics: NeverScrollableScrollPhysics(),
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Pending Orders'),
                              ],
                              mainAxisAlignment: MainAxisAlignment.end,
                            ),
                            12.sbw,
                            Container(
                              height: 24.h,
                              width: 24.w,
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.radical_red),
                              child: Center(
                                child: Text('07', style: kSize18DarkW500Text.copyWith(fontSize: 11.sp, color: AppColors.white),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('In Progress'),
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                          12.sbw,
                          Container(
                            height: 24.h,
                            width: 24.w,
                            margin: EdgeInsets.only(bottom: 2.h),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.radical_red),
                            child: Center(
                              child: Text('07', style: kSize18DarkW500Text.copyWith(fontSize: 11.sp, color: AppColors.white),),
                            ),
                          )
                        ],
                      ),
                    )
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Completed'),
                              ],
                              mainAxisAlignment: MainAxisAlignment.end,
                            ),
                            12.sbw,
                            Container(
                              height: 24.h,
                              width: 24.w,
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.radical_red),
                              child: Center(
                                child: Text('07', style: kSize18DarkW500Text.copyWith(fontSize: 11.sp, color: AppColors.white),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
                child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                PendingOrdersTab(),
                InProgressTab(),
                CompletedOrdersTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
