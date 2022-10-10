import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE1,
      body: Padding(
        padding: EdgeInsets.only(left: 16.r, right: 16.r, top: 24.r),
        child: Column(
          children: [
            InkWell(
                borderRadius: BorderRadius.circular(8.r),
                onTap: () {
                  AppNavigator.pushNamed(RouteNames.HISTORYORDER);
                },
                child: _orderCard()),
            SizedBox(height: 12.h),
            InkWell(
                borderRadius: BorderRadius.circular(8.r),
                onTap: () {
                  AppNavigator.pushNamed(RouteNames.HISTORYORDER);
                },
                child: _orderCard()),
          ],
        ),
      ),
    );
  }

  Container _orderCard() {
    return Container(
      width: 343.w,
      height: 132.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r), color: AppColors.WHITE),
      child: Padding(
        padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.PROFILE,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 10.w),
                Text(
                  'Islom Rakhmonov',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.BLACK),
                ),
                const Spacer(),
                Text(
                  '#123456798',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.PRIMARY),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.LOCATION,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 10.w),
                Text(
                  'Мирзо Улугбекский район улица\n'
                  'Оккурган 23',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.CLOCK,
                  fit: BoxFit.none,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 10.w),
                Text(
                  '6.06.2006',
                  style: TextStyle(
                      color: AppColors.BLACK,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 5.w),
                Text(
                  '21:00',
                  style: TextStyle(
                      color: AppColors.BLACK,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 15.r),
          ],
        ),
      ),
    );
  }
}
