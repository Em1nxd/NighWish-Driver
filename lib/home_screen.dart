import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/constants/app_images.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/screens/home/first_page.dart';
import 'package:nightwishdriver/widgets/appbar_widget/appbar_widget.dart';
import 'package:nightwishdriver/widgets/button_widgets/primary_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/widgets/button_widgets/second_primary_button_widget.dart';

import 'routes/app_navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppbarWidget(controller: _tabController),
      drawer: NavigationDrawer(),
      body: TabBarView(
        children: [
          FirstPage(),
          Container(),
          Container(),
        ],
        controller: _tabController,
      ),
    );
  }
}

class NavigationDrawer extends StatefulWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  bool value = true;
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text(
              'Вы действительно хотите выйти?',
            ),
            actions: [
              CupertinoDialogAction(
                  child: const Text('Да'),
                  onPressed: () {
                    AppNavigator.pushNamed(RouteNames.LOGIN);
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
  Widget build(BuildContext context) => Drawer(
        width: 310.w,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: AppColors.PRIMARY),
              accountName: Text(
                'Islom',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
              ),
              accountEmail: Text(
                '+998 99 974-45-15',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(bottom: 10.r),
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppImages.ISLOM),
                ),
              ),
            ),
            buildMenuItems(context),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => DefaultTabController(
        length: 2,
        child: Container(
          width: 310.w,
          padding: EdgeInsets.only(left: 16.r, right: 36.r, top: 38.r),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.NOTIFICATION,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Уведомление',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.DARK_GREY),
                  ),
                  Spacer(),
                  buildSwitch()
                ],
              ),
              SizedBox(height: 15.h),
              ListTile(
                onTap: () {
                  AppNavigator.pushNamed(RouteNames.HISTORY);
                },
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset(
                  AppIcons.HISTORY1,
                  height: 24.h,
                ),
                title: Align(
                    alignment: Alignment(-1.2, 0),
                    child: Text(
                      'История',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(height: 10.h),
              ListTile(
                onTap: () {
                  AppNavigator.pushNamed(RouteNames.ABOUTUS);
                },
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset(
                  AppIcons.INFO,
                  height: 24.h,
                ),
                title: Align(
                    alignment: Alignment(-1.2, 0),
                    child: Text(
                      'О приложении',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(height: 10.h),
              ListTile(
                onTap: () {
                  AppNavigator.pushNamed(RouteNames.LANGUAGE);
                },
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset(
                  AppIcons.LANGUAGE,
                  height: 24.h,
                ),
                title: Align(
                    alignment: Alignment(-1.2, 0),
                    child: Text(
                      'Язык',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(height: 124.h),
              InkWell(
                onTap: () {
                  _showDialog();
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.LOGOUT,
                      color: AppColors.PRIMARY,
                      width: 24.w,
                      height: 24.h,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Выход',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.PRIMARY),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.h),
              Divider(
                height: 3.h,
                color: AppColors.DARK_GREY,
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Text(
                    'Версия',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.DARK_GREY),
                  ),
                  Spacer(),
                  Text(
                    '0.1.4',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.DARK_GREY),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: 343.w,
                height: 42.h,
                decoration: BoxDecoration(
                  color: AppColors.BACKWHITE,
                  borderRadius: BorderRadius.circular(22.r),
                ),
                child: SizedBox(
                  width: 125.w,
                  height: 32.h,
                  child: TabBar(
                    splashBorderRadius: BorderRadius.circular(25.r),
                    labelColor: AppColors.WHITE,
                    unselectedLabelColor: AppColors.BLACK,
                    indicator: BoxDecoration(
                      border: Border.all(color: AppColors.BORDER),
                      color: AppColors.WHITE,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.LIGHT),
                            SizedBox(width: 7.w),
                            Text(
                              'Светлый',
                              style: TextStyle(
                                  color: AppColors.DARK_GREY, fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.DARK),
                            SizedBox(width: 7.w),
                            Text(
                              'Тёмный',
                              style: TextStyle(
                                  color: AppColors.DARK_GREY, fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildSwitch() => Transform.scale(
        scale: 1,
        child: Platform.isIOS
            ? CupertinoSwitch(
                value: value,
                onChanged: (value) => setState(() => this.value = value),
              )
            : Switch(
                value: value,
                onChanged: (value) => setState(() => this.value = value),
              ),
      );
}
