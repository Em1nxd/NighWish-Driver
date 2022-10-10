import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/widgets/button_widgets/little_button_widget.dart';
import 'package:nightwishdriver/widgets/button_widgets/second_little_button.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool value = true;

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text(
              'Вы действительно хотите отклонить?',
            ),
            actions: [
              CupertinoDialogAction(
                  child: const Text('Да'),
                  onPressed: () {
                    AppNavigator.pop();
                  }),
              CupertinoDialogAction(
                child: const Text('Нет'),
                onPressed: () {
                  AppNavigator.pop();
                },
              ),
            ],
          );
        });
  }

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
              child: _orderCard(),
              onTap: () {
                AppNavigator.pushNamed(RouteNames.SECONDORDER);
              },
            ),
            SizedBox(height: 12.h),
            InkWell(
              borderRadius: BorderRadius.circular(8.r),
              child: _orderCard(),
              onTap: () {
                AppNavigator.pushNamed(RouteNames.SECONDORDER);
              },
            ),
          ],
        ),
      ),
    );
  }

  Container _orderCard() {
    return Container(
      width: 343.w,
      height: 145.h,
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
            SizedBox(height: 15.r),
            Row(
              children: [
                LittleButton(
                    label: 'Отклонить',
                    onPressed: () {
                      _showDialog();
                    }),
                Spacer(),
                SecondLittleButton(
                    label: 'Навигация',
                    onPressed: () {
                      AppNavigator.pushNamed(RouteNames.SHOWMAP);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
