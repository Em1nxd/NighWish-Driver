import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/widgets/icon_widget/icon_widget.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE1,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.PRIMARY,
        title: Text(
          'История',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Text(
                '27 июль, Вторник',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.TEXTONE),
              ),
              SizedBox(height: 12.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: ExpansionTile(
                  collapsedBackgroundColor: AppColors.WHITE,
                  backgroundColor: AppColors.WHITE,
                  title: Text(
                    'Заказ #1234567890',
                    style: TextStyle(
                        color: AppColors.BLACK,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Аккурган улица, 23A  5 ...',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.BLACK),
                  ),
                  children: [
                    Container(
                      width: 345.w,
                      height: 120.h,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 90.r, right: 90.r, top: 15.r),
                        child: Row(
                          children: [
                            Divider(height: 1.h),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.PHONE,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Позвонить',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 50.w),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.QUESTION,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'О заказе\n',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: ExpansionTile(
                  backgroundColor: AppColors.WHITE,
                  title: Text(
                    'Заказ #1234567890',
                    style: TextStyle(
                        color: AppColors.BLACK,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Аккурган улица, 23A  5 ...',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.BLACK),
                  ),
                  children: [
                    Container(
                      width: 345.w,
                      height: 120.h,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 90.r, right: 90.r, top: 15.r),
                        child: Row(
                          children: [
                            Divider(height: 1.h),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.PHONE,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Позвонить',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 50.w),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.QUESTION,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'О заказе\n',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: ExpansionTile(
                  backgroundColor: AppColors.WHITE,
                  title: Text(
                    'Заказ #1234567890',
                    style: TextStyle(
                        color: AppColors.BLACK,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Аккурган улица, 23A  5 ...',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.BLACK),
                  ),
                  children: [
                    Container(
                      width: 345.w,
                      height: 120.h,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 90.r, right: 90.r, top: 15.r),
                        child: Row(
                          children: [
                            Divider(height: 1.h),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.PHONE,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Позвонить',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 50.w),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.QUESTION,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'О заказе\n',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                '21 июль, Среда',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.TEXTONE),
              ),
              SizedBox(height: 12.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: ExpansionTile(
                  backgroundColor: AppColors.WHITE,
                  title: Text(
                    'Заказ #1234567890',
                    style: TextStyle(
                        color: AppColors.BLACK,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Аккурган улица, 23A  5 ...',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.BLACK),
                  ),
                  children: [
                    Container(
                      width: 345.w,
                      height: 120.h,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 90.r, right: 90.r, top: 15.r),
                        child: Row(
                          children: [
                            Divider(height: 1.h),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.PHONE,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Позвонить',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 50.w),
                            Column(
                              children: [
                                IconWidget(
                                  icon: AppIcons.QUESTION,
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'О заказе\n',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.TEXT,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
