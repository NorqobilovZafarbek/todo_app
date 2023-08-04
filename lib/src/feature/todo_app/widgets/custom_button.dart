import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {},
        style: FilledButton.styleFrom(
          fixedSize: Size(346.w, 44.h),
          backgroundColor: AppColors.buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add task',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.darkTextColor,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.add_circle_sharp,
              size: 24.h,
              color: AppColors.selectedIconColor,
            )
          ],
        ));
  }
}
