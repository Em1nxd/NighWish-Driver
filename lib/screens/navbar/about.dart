import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.PRIMARY,
        title: Text(
          'О приложении',
          style: TextStyle(
              color: AppColors.WHITE,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            AppIcons.BACK,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.none,
            color: AppColors.WHITE,
          ),
          onPressed: () {
            AppNavigator.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet volutpat phasellus eu, ut justo, quisque. Facilisis vitae velit, quisque fames ullamcorper volutpat ac. Sit faucibus vehicula ut velit sagittis. Quis sit donec sollicitudin magna ultrices diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet volutpat phasellus eu, ut justo, quisque. Facilisis vitae velit, quisque fames ullamcorper volutpat ac. Sit faucibus vehicula ut velit sagittis. Quis sit donec sollicitudin magna ultrices diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet volutpat phasellus eu, ut justo, quisque. Facilisis vitae velit, quisque fames ullamcorper volutpat ac. Sit faucibus vehicula ut velit sagittis. Quis sit donec sollicitudin magna ultrices diam.',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.BLACK),
          )
        ]),
      ),
    );
  }
}
