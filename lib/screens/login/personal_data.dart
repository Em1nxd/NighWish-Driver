import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/constants/app_images.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        backgroundColor: AppColors.WHITE,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Регистрация',
          style: TextStyle(
              color: AppColors.BLACK,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 110.w,
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.DARKWHITE,
                  child: SvgPicture.asset(AppIcons.PERSON),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              'Имя',
              style: TextStyle(
                  color: AppColors.BLACK,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5.h),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    borderSide: BorderSide(color: AppColors.BORDER)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.BORDER),
                ),
                focusColor: Colors.black26,
                labelText: "",
                hintText: 'Имя',
                fillColor: Colors.black26,
                hoverColor: Colors.black26,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Дата рождения',
              style: TextStyle(
                  color: AppColors.BLACK,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5.h),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                    borderSide: BorderSide(color: AppColors.BORDER)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.BORDER),
                ),
                focusColor: Colors.black26,
                labelText: '',
                fillColor: Colors.black26,
                hoverColor: Colors.black26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
