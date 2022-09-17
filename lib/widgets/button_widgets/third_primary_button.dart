import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ThirdPrimaryButton extends StatelessWidget {
  final String icon;
  final VoidCallback? onPressed;
  // Color color;
  bool isLoading;
  bool isActive;
  ThirdPrimaryButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    // this.color = AppColors.ORANGE,
    this.isLoading = false,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (isLoading) ? null : onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        shadowColor: isActive ? null : Colors.transparent,
        primary: AppColors.GREEN,
        fixedSize: Size(56.w, 56.h),
      ),
      child: isLoading
          ? const Center(child: CupertinoActivityIndicator())
          : SvgPicture.asset(icon),
    );
  }
}
