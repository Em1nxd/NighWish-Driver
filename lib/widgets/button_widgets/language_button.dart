import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LanguageButton extends StatelessWidget {
  final String image;
  final String label;
  final VoidCallback? onPressed;
  // Color color;
  bool isLoading;
  bool isActive;
  LanguageButton({
    Key? key,
    required this.image,
    required this.label,
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
        shadowColor: isActive ? null : Colors.transparent,
        primary: AppColors.WHITE,
        fixedSize: Size(343.w, 56.h),
      ),
      child: isLoading
          ? const Center(child: CupertinoActivityIndicator())
          : Row(
              children: [
                SvgPicture.asset(
                  image,
                  fit: BoxFit.none,
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 20.w),
                Text(
                  label,
                  style: TextStyle(
                      color: AppColors.BLACK,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
    );
  }
}
