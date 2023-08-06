import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';
import '../models/todo_item.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_title.dart';
import '../widgets/text_and_theme_button.dart';
import '../widgets/watch.dart';

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
  late ValueNotifier<DateTime> dateTime;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    dateTime = ValueNotifier(DateTime.now());
    updateTime();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  void onTap() {
    widget.isDark.value = !widget.isDark.value;
  }

  void updateTime() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTime.value = dateTime.value.add(const Duration(seconds: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.isDark,
      builder: (context, value, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor:
              value ? AppColors.darkBgColor : AppColors.lightBgColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: ValueListenableBuilder(
                        valueListenable: dateTime,
                        builder: (context, value, child) {
                          return CustomPaint(
                            size: const Size.square(241),
                            painter: RPSCustomPainter(dateTime: value),
                          );
                        },
                      ),
                    ),
                    CustomText(value: value, onTap: onTap),
                    CustomButton(list: widget.todosList),
                    CustomTitle(dataTitle: widget.todosList)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
