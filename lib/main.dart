import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_tablet_kitchen_app/utils/values/app_colors/app_colors.dart';
import 'package:food_tablet_kitchen_app/views/orders/orders_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'data/data_binding/data_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(864, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.rightToLeft,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,
            primaryColor: AppColors.primary,
            useMaterial3: true,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.appBarColor
            )
          ),
          getPages: [
            GetPage(
                name: '/',
                page: () => const OrdersScreen(),
                binding: DataBinding())
          ],
        );
      },
    );
  }
}
