import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';

class SettingItem extends StatelessWidget {
  final String text;
  final bool value;
  final void Function() onTap;

  const SettingItem({
    required this.text,
    required this.value,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: ListTile(
        tileColor: value ? AppColors.darkTextColor : Colors.white,
        onTap: onTap,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: value ? AppColors.lightBgColor : AppColors.darkBgColor),
          borderRadius: BorderRadius.all(
            Radius.circular(15.w),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
            color: value ? AppColors.lightTextColor : AppColors.darkTextColor,
            fontSize: 18.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Icon(
          value ? CupertinoIcons.moon : CupertinoIcons.sun_max,
          color: value ? AppColors.lightTextColor : AppColors.darkTextColor,
          size: 28.h,
        ),
      ),
    );
  }
}
