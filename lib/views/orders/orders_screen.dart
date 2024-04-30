import 'package:flutter/material.dart';
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
        child: Expanded(
          child: Column(
            children: [
              TabBar(
                  tabs: [
                    Tab(
                      text: 'Pending Orders',
                    )
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
