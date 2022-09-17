import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/constants/app_images.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/widgets/button_widgets/second_primary_button_widget.dart';
import 'package:nightwishdriver/widgets/button_widgets/third_primary_button.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(50.r),
            onTap: () {
              AppNavigator.pop();
            },
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55.r),
                color: AppColors.WHITE,
              ),
              child: SvgPicture.asset(
                AppIcons.BACK,
                width: 15.w,
                height: 15.h,
                fit: BoxFit.none,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Image.asset(
              AppImages.THIRD,
              width: 314.w,
              height: 193.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15.h),
            Text(
              'Заказ',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.BLACK),
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            ThirdPrimaryButton(
              icon: AppIcons.MESSAGE,
              onPressed: () {
                AppNavigator.pushNamed(RouteNames.MESSAGEPAGE);
              },
            ),
            SizedBox(
              width: 10.w,
            ),
            SecondPrimaryButton(
              label: 'Финиш',
              icon: AppIcons.FLAG,
              onPressed: () {
                AppNavigator.pushNamedAndRemove(RouteNames.HOME);
              },
            ),
          ],
        ),
      ),
    );
  }
}
