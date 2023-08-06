import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';

class CustomText extends StatefulWidget {
  final bool value;
  final void Function() onTap;

  const CustomText({super.key, required this.value, required this.onTap});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Daily Tasks',
            style: TextStyle(
              color: widget.value
                  ? AppColors.lightTextColor
                  : AppColors.darkTextColor,
              fontSize: 30.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          IconButton(
            onPressed: widget.onTap,
            icon: Icon(
              widget.value ? CupertinoIcons.moon : CupertinoIcons.sun_max,
              color: widget.value
                  ? AppColors.lightTextColor
                  : AppColors.darkTextColor,
            ),
          )
        ],
      ),
    );
  }
}
