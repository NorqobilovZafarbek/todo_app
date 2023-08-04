import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';
import '../models/todo_item.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_and_theme_button.dart';

class HomePage extends StatefulWidget {
  final ValueNotifier<bool> isDark;
  final ValueNotifier<List<DataTitle>> todosList;

  const HomePage({
    required this.isDark,
    required this.todosList,
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onTap() {
    widget.isDark.value = !widget.isDark.value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.isDark,
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor:
              value ? AppColors.darkBgColor : AppColors.lightBgColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
              child: Column(
                children: [
                  SizedBox(
                    width: 241.w,
                    height: 241.h,
                  ),
                  CustomText(value: value, onTap: onTap),
                  CustomButton(list: widget.todosList),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
