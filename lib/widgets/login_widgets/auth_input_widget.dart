import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:pinput/pinput.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 220.w,
            child: Pinput(
              controller: controller,
              keyboardType: TextInputType.number,
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              defaultPinTheme: PinTheme(
                height: 60.h,
                width: 70.w,
                textStyle: GoogleFonts.urbanist(
                  fontSize: 24.sp,
                  color: AppColors.BLACK,
                  fontWeight: FontWeight.w700,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.WHITE,
                  border: Border.all(
                    color: AppColors.PRIMARY.withOpacity(0.5),
                    width: 1.w,
                  ),
                ),
              ),
              focusedPinTheme: PinTheme(
                height: 60.h,
                width: 60.w,
                textStyle: GoogleFonts.urbanist(
                  fontSize: 24.sp,
                  color: AppColors.BLACK,
                  fontWeight: FontWeight.w700,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.PRIMARY,
                    width: 1.w,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
