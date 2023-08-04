import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 2,
      backgroundColor: const Color(0xFFFFFFFF),
      child: SizedBox(
        width: 250.w,
        height: 250.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Team Name',
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontSize: 18.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const FlutterLogo(),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Text(
                  'Lorem ipsum dolor Lorem ipsum Lorem ipsum ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor',
                  style: TextStyle(
                    color: AppColors.darkTextColor,
                    fontSize: 12.sp,
                    height: 1.5,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
