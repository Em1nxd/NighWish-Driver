import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductOrder extends StatelessWidget {
  const ProductOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 137.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.WHITE,
      ),
      child: Padding(
        padding: EdgeInsets.all(13.r),
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
            SizedBox(height: 10.h),
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
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 27.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.ROUTING,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 10.w),
                Text(
                  '10км',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                SvgPicture.asset(
                  AppIcons.CLOCK,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  '15 мин',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
