import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LittleButton extends StatelessWidget {
  final String label;

  final VoidCallback? onPressed;
  // Color color;
  bool isLoading;
  bool isActive;
  LittleButton({
    Key? key,
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        shadowColor: isActive ? null : Colors.transparent,
        primary: AppColors.PRIMARY,
        fixedSize: Size(140.w, 36.h),
      ),
      child: isLoading
          ? const Center(child: CupertinoActivityIndicator())
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
    );
  }
}
