import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/widgets/product_order_widget/order_list_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE1,
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                AppNavigator.pushNamed(RouteNames.PRODUCT);
              },
              child: ProductOrder(),
            ),
            SizedBox(height: 12.h),
            InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                AppNavigator.pushNamed(RouteNames.PRODUCT);
              },
              child: ProductOrder(),
            ),
            SizedBox(height: 12.h),
            InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                AppNavigator.pushNamed(RouteNames.PRODUCT);
              },
              child: ProductOrder(),
            ),
            SizedBox(height: 12.h),
            InkWell(
              borderRadius: BorderRadius.circular(8.r),
              onTap: () {
                AppNavigator.pushNamed(RouteNames.PRODUCT);
              },
              child: ProductOrder(),
            ),
          ],
        ),
      ),
    );
  }
}
