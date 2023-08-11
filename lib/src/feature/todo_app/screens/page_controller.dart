import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_images.dart';
import '../models/todo_item.dart';
import 'home_page.dart';
import 'settings_page.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  final ValueNotifier<List<DataTitle>> todosList = ValueNotifier([]);
  late final ValueNotifier<bool> isDark = ValueNotifier(false);
  late ValueNotifier<DateTime> currentDate;
  late SharedPreferences pref;
  late String dateWithFormat;
  late PageController controller;
  late final pageList = [
    HomePage(
      isDark: isDark,
      todosList: todosList,
      pref: pref,
      currentDate: currentDate,
    ),
    SettingsPage(
      pref: pref,
      isDark: isDark,
    )
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    currentDate = ValueNotifier(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            pref = snapshot.data!;
            isDark.value = pref.getBool("isDark") ?? false;
            return ValueListenableBuilder(
                valueListenable: currentDate,
                builder: (context, currentDateValue, child) {
                  dateWithFormat =
                      "${currentDateValue.year}/${currentDateValue.month}/${currentDateValue.day}";
                  print("Current date: ${dateWithFormat}");
                  todosList.value = pref
                          .getStringList(dateWithFormat)
                          ?.map((e) => DataTitle.fromJson(e))
                          .toList() ??
                      [];
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
                      child: ValueListenableBuilder(
                          valueListenable: isDark,
                          builder: (context, value, child) {
                            return BottomNavigationBar(
                              onTap: (index) {
                                currentIndex = index;
                                controller.jumpToPage(index);
                                setState(() {});
                              },
                              type: BottomNavigationBarType.fixed,
                              currentIndex: currentIndex,
                              backgroundColor: value
                                  ? AppColors.tasksBgColor
                                  : AppColors.darkBgColor,
                              selectedIconTheme: IconThemeData(
                                  color: AppColors.selectedIconColor),
                              unselectedIconTheme: IconThemeData(
                                  color: AppColors.unselectedIconColor),
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
                            );
                          }),
                    ),
                  );
                });
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
