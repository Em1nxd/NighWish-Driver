import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nightwishdriver/constants/app_colors.dart';
import 'package:nightwishdriver/constants/app_icons.dart';
import 'package:nightwishdriver/routes/app_navigator.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: AppBar(
        backgroundColor: AppColors.PRIMARY,
        centerTitle: true,
        elevation: 0,
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
        title: Text(
          'Связь с клиентом',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.WHITE),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Expanded(
              child: Text('Вторник, 13 Сентябрь'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 56.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: AppColors.GREEN),
                  child: IconButton(
                    onPressed: () {
                      showCupertinoModalPopup(
                          context: context, builder: buildActionSheet);
                    },
                    icon: SvgPicture.asset(
                      AppIcons.PHONE,
                      color: AppColors.WHITE,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.BLACK),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.DARKWHITE,
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppIcons.TOP,
                        width: 15.w,
                        height: 15.h,
                        fit: BoxFit.none,
                      ),
                    ),
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.WHITE),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.WHITE),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildActionSheet(BuildContext context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {},
            child: Text('Call +998 99-999-99-99'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            AppNavigator.pop();
          },
          child: Text('Cancel'),
        ),
      );
}
