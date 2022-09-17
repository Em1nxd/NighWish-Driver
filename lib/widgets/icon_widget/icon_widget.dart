import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';

class IconWidget extends StatelessWidget {
  final String icon;
  const IconWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 55.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: AppColors.DARKWHITE),
      child: InkWell(
        onTap: () {
          AppNavigator.pushNamed(RouteNames.HISTORYINFO);
        },
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.none,
          width: 20.w,
          height: 20.h,
        ),
      ),
    );
  }
}
