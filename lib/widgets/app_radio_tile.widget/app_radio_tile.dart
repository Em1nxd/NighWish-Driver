import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_colors.dart';

// ignore: must_be_immutable
class AppRadioTile extends StatelessWidget {
  final String group;
  final String title;
  final VoidCallback onTap;

  const AppRadioTile({
    Key? key,
    required this.group,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: onTap,
        child: Container(
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.BORDER),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Container(
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      width: _isActive ? 6 : 2,
                      color: _isActive ? AppColors.PRIMARY : AppColors.BORDER,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  bool get _isActive => group == title;
}
