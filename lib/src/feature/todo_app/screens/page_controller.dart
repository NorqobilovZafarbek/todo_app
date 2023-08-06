import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';
import 'package:todo_app/src/common/constants/images.dart';

import '../models/todo_item.dart';
import 'calendar_page.dart';
import 'favorite_page.dart';
import 'settings_page.dart';
import 'home_page.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  final ValueNotifier<bool> isDark = ValueNotifier(false);
  final ValueNotifier<List<DataTitle>> todosList = ValueNotifier([]);

  late PageController controller;
  int currentIndex = 0;

  late final pageList = [
    HomePage(
      isDark: isDark,
      todosList: todosList,
    ),
    const CalendarPage(),
    const FavoritePage(),
    SettingsPage(
      isDark: isDark,
    )
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: pageList.length,
        controller: controller,
        itemBuilder: (context, index) {
          return pageList[index];
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 70.h,
        child: BottomNavigationBar(
          onTap: (index) {
            currentIndex = index;
            controller.jumpToPage(index);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          backgroundColor: AppColors.darkBgColor,
          selectedIconTheme: IconThemeData(color: AppColors.selectedIconColor),
          unselectedIconTheme:
              IconThemeData(color: AppColors.unselectedIconColor),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image(
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.home),
                color: AppColors.unselectedIconColor,
              ),
              activeIcon: Image(
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image(
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.calendar),
                color: AppColors.unselectedIconColor,
              ),
              activeIcon: Image(
                color: AppColors.selectedIconColor,
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.calendar),
              ),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Image(
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.star),
                color: AppColors.unselectedIconColor,
              ),
              activeIcon: Image(
                color: AppColors.selectedIconColor,
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.star),
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Image(
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.settings),
                color: AppColors.unselectedIconColor,
              ),
              activeIcon: Image(
                color: AppColors.selectedIconColor,
                width: 28.w,
                height: 24.h,
                image: AssetImage(AppImages.settings),
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
