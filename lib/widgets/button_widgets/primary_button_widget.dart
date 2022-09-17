import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  // Color color;
  bool isLoading;
  bool isActive;
  PrimaryButton({
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
        shadowColor: isActive ? null : Colors.transparent,
        primary: AppColors.PRIMARY,
        fixedSize: Size(375.w, 58.h),
      ),
      child: isLoading
          ? const Center(child: CupertinoActivityIndicator())
          : Text(
              label,
              style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
    );
  }
}
