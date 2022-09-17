import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/constants/app_images.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/widgets/button_widgets/second_primary_button_widget.dart';
import 'package:nightwishdriver/widgets/button_widgets/third_primary_button.dart';

class ProductOrderOne extends StatelessWidget {
  const ProductOrderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        backgroundColor: AppColors.WHITE,
        centerTitle: true,
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
                  AppIcons.TWO,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 6.w),
                Text(
                  '13:00',
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
                  AppIcons.THREE,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 6.w),
                Text(
                  '5,3 км',
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
                  '15 мин',
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
                  AppIcons.SIX,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 6.w),
                Text(
                  'Comment',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.BLACK,
                      fontSize: 14.sp),
                ),
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
            Spacer(),
            Row(
              children: [
                ThirdPrimaryButton(
                  icon: AppIcons.PLUS,
                  onPressed: () {
                    AppNavigator.pushNamed(RouteNames.HOME);
                  },
                ),
                SizedBox(width: 10.w),
                SecondPrimaryButton(
                  label: 'В путь',
                  icon: AppIcons.FLY,
                  onPressed: () async {
                    // AppNavigator.pushNamed(RouteNames.MAPPAGE);
                    try {
                      final coords =
                          Coords(40.38127194443599, 70.81178068431076);
                      const title = "";
                      final availableMaps = await MapLauncher.installedMaps;

                      if (Platform.isIOS) {
                        final action = CupertinoActionSheet(
                          actions: [
                            for (var map in availableMaps)
                              CupertinoActionSheetAction(
                                onPressed: () {
                                  AppNavigator.pushNamed(RouteNames.MAPPAGE);

                                  map.showMarker(
                                    coords: coords,
                                    title: title,
                                  );
                                },
                                child: Text(map.mapName),
                              ),
                          ],
                          cancelButton: CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Отменить"),
                          ),
                        );
                        
                        // This first line we use for our github and gitlab changes
                        

                        showCupertinoModalPopup(
                            context: context, builder: (context) => action);
                      } else {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SafeArea(
                              child: SingleChildScrollView(
                                child: Wrap(
                                  children: <Widget>[
                                    for (var map in availableMaps)
                                      ListTile(
                                        onTap: () {
                                          map
                                              .showMarker(
                                            coords: coords,
                                            title: title,
                                          )
                                              .then((value) {
                                            Navigator.pop(context);
                                          });
                                        },
                                        title: Text(map.mapName),
                                        leading: SvgPicture.asset(
                                          map.icon,
                                          height: 30.0,
                                          width: 30.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    } catch (e) {}
                  },
                ),
              ],
            ),
            SizedBox(height: 36.h),
          ],
        ),
      ),
    );
  }
}
