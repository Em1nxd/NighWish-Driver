import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_colors.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {
  final TabController controller;
  const AppbarWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.WHITE,
      centerTitle: true,
      title: Text(
        'Islom Rakhmonov',
        style: TextStyle(
            color: AppColors.BLACK,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
      ),
      elevation: 0.5,
      bottom: TabBar(
          isScrollable: true,
          indicatorColor: AppColors.PRIMARY,
          labelColor: AppColors.PRIMARY,
          unselectedLabelColor: AppColors.BLACK,
          controller: controller,
          tabs: [
            Badge(
              badgeColor: AppColors.GREEN,
              badgeContent: Text(
                '4',
                style: TextStyle(color: AppColors.WHITE),
              ),
              animationType: BadgeAnimationType.slide,
              animationDuration: Duration(milliseconds: 250),
              child: Tab(
                child: Text('Новые заказы'),
              ),
            ),
            Badge(
              badgeColor: AppColors.ORANGE,
              badgeContent: Text(
                '2',
                style: TextStyle(color: AppColors.WHITE),
              ),
              animationType: BadgeAnimationType.slide,
              animationDuration: Duration(milliseconds: 250),
              child: Tab(
                child: Text('В процессе'),
              ),
            ),
            Tab(
              child: Text('Завершенный'),
            )
          ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 100.h);
}
