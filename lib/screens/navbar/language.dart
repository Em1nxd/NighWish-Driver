import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/constants/app_images.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE1,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.PRIMARY,
        title: Text(
          'Язык',
          style: TextStyle(
              color: AppColors.WHITE,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            AppIcons.BACK,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.none,
            color: AppColors.WHITE,
          ),
          onPressed: () {
            AppNavigator.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            SizedBox(
              width: 343.w,
              height: 56.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AppColors.WHITE, elevation: 0),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.UZ,
                      width: 30.w,
                      height: 30.h,
                      fit: BoxFit.none,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'O’zbek',
                      style: TextStyle(
                          color: AppColors.BLACK,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
           
            SizedBox(height: 18.h),
            SizedBox(
              width: 343.w,
              height: 56.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AppColors.WHITE, elevation: 0),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.RU,
                      width: 30.w,
                      height: 30.h,
                      fit: BoxFit.none,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Русский',
                      style: TextStyle(
                          color: AppColors.BLACK,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
