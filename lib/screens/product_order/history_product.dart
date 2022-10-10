import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/constants/app_images.dart';

class HistoryOrder extends StatelessWidget {
  const HistoryOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        backgroundColor: AppColors.WHITE,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.PDF),
          )
        ],
        elevation: 0,
        title: Text(
          'Rakhmonov Islom',
          style: TextStyle(
              color: AppColors.BLACK,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.r, right: 16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                '#123456798',
                style: TextStyle(
                    color: AppColors.BLACK,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp),
              ),
            ),
            SizedBox(height: 16.h),
            Image.asset(
              AppImages.MAP,
              width: 343.w,
              height: 120.h,
              fit: BoxFit.none,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.ONE,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 6.w),
                Expanded(
                  child: Text(
                    'Мирзо Улугбекский район улица Оккурган 23',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.BLACK,
                        fontSize: 14.sp),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.FIVE,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 6.w),
                Text(
                  'Click',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK,
                      fontSize: 14.sp),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.FOUR,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 6.w),
                Text(
                  '16.06.2006  21:00',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK,
                      fontSize: 14.sp),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(
                'Заказ',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.BLACK),
              ),
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                Text(
                  '1.',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 9.w),
                Text(
                  'Пицца Alfredo',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                Spacer(),
                Text(
                  '2x',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 50.w),
                Text(
                  '70 000 UZS',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Text(
                  '2.',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 9.w),
                Text(
                  'Coca cola 1.5л',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                Spacer(),
                Text(
                  '1x',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 50.w),
                Text(
                  '11 000 UZS',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Text(
                  '3.',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 9.w),
                Text(
                  'Картошка фри',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                Spacer(),
                Text(
                  '1x',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 50.w),
                Text(
                  '14 000 UZS',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Divider(
              thickness: 1.r,
              color: AppColors.BLACK,
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Итого',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.BLACK),
                ),
                Spacer(),
                Text(
                  '4x',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.BLACK),
                ),
                SizedBox(width: 50.w),
                Text(
                  '95 000 UZS',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.BLACK),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
