import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/home_screen.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/app_routes.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              splashColor: Colors.white,
              expansionTileTheme: ExpansionTileThemeData(
              
                backgroundColor: AppColors.WHITE,
                
              ),

              listTileTheme: ListTileThemeData(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r))
              ),
              platform: TargetPlatform.android,
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(
                  color: AppColors.BLACK,
                ),
              ),
            ),
            title: "NightWish",
            debugShowCheckedModeBanner: false,
            navigatorKey: AppNavigator.navigatorKey,
            initialRoute: RouteNames.LOGIN,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );
        });
  }
}
