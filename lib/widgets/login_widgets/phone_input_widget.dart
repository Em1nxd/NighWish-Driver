import 'package:flutter/material.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_images.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Row(
      children: [
        Container(
          width: 123.w,
          height: 53.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.BORDER),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.UZ,
                width: 35.w,
                height: 24.h,
                fit: BoxFit.none,
              ),
              SizedBox(width: 10.w),
              Text(
                '+998',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        // This first line we use for our github and gitlab changes
        // This second line we use for our backend changes and api deployments
        SizedBox(width: 10.w),
        Container(
          width: 210.w,
          height: 53.h,
          decoration: const BoxDecoration(
            color: AppColors.WHITE,
          ),
          child: Column(
            children: [
              TextFormField(
                controller: controller,
                maxLength: 9,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.BLACK),
                decoration: InputDecoration(
                  counterText: '',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.BORDER),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.BORDER),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
