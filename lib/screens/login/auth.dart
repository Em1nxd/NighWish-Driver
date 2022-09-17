import 'package:flutter/material.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_images.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/widgets/login_widgets/auth_input_widget.dart';
import 'package:nightwishdriver/widgets/button_widgets/primary_button_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        backgroundColor: AppColors.WHITE,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Проверка',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.BLACK,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            AppImages.FIRST,
            width: 215.w,
            height: 215.h,
          ),
          SizedBox(height: 12.h),
          Text(
            'На ваш телефон отправлен код\n',
            style: TextStyle(
                color: AppColors.GREY,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const AuthInput(),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.all(16.r),
            child: PrimaryButton(
              label: 'Проверить',
              onPressed: () {
                AppNavigator.pushNamedAndRemove(RouteNames.HOME);
              },
            ),
          ),
        ],
      ),
    );
  }
}
