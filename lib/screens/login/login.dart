import 'package:flutter/material.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nightwishdriver/constants/app_images.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/widgets/login_widgets/phone_input_widget.dart';
import 'package:nightwishdriver/widgets/button_widgets/primary_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        backgroundColor: AppColors.WHITE,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Регистрация',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.BLACK,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppImages.LOGIN,
                width: 240.w,
                height: 240.h,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Номер телефона',
              style: TextStyle(
                  color: AppColors.BLACK,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            const PhoneField(),
            SizedBox(height: 20.h),
            PrimaryButton(
              label: 'Продолжать',
              onPressed: () {
                AppNavigator.pushNamed(RouteNames.AUTH);
              },
            ),
          ],
        ),
      ),
    );
  }
}
