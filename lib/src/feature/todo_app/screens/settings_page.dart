import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';
import '../widgets/custom_dialog.dart';
import '../widgets/settings_iitems.dart';

class SettingsPage extends StatefulWidget {
  final ValueNotifier<bool> isDark;

  const SettingsPage({super.key, required this.isDark});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: value
                                ? AppColors.lightTextColor
                                : AppColors.darkTextColor,
                            fontSize: 30.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const CustomDialog();
                              },
                            );
                          },
                          icon: Icon(
                            Icons.info_outline,
                            color: value
                                ? AppColors.lightTextColor
                                : AppColors.darkTextColor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.h),
                      child: SizedBox(
                        height: 250.h,
                        child: const FlutterLogo(
                          size: 200,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SettingItem(
                          text: value ? 'Dark Mode' : 'Light Mode',
                          value: value,
                          onTap: onTap,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
