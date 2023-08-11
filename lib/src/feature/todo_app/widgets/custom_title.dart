import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_images.dart';
import '../models/todo_item.dart';
import 'custom_list_tile.dart';

class CustomTitle extends StatefulWidget {
  final ValueNotifier<List<DataTitle>> dataTitle;
  final ValueNotifier<DateTime> currentDate;
  final SharedPreferences pref;

  const CustomTitle({
    required this.dataTitle,
    required this.pref,
    required this.currentDate,
    super.key,
  });

  @override
  State<CustomTitle> createState() => _CustomTitleState();
}

class _CustomTitleState extends State<CustomTitle> {
  late DateTime dateTime;

  @override
  void initState() {
    super.initState();
  }

  void onPressed(DataTitle dataTitle) {
    List<DataTitle> temp = widget.dataTitle.value;
    int pos = temp.indexOf(dataTitle);
    temp[pos].isCompleted = !temp[pos].isCompleted!;
    widget.dataTitle.value = temp.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h),
      child: Container(
        height: 346.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.darkBgColor,
          border: Border.all(color: AppColors.borderColor, width: 3.h),
          borderRadius: BorderRadius.all(
            Radius.circular(23.w),
          ),
        ),
        child: ValueListenableBuilder(
            valueListenable: widget.currentDate,
            builder: (context, currentDateValue, child) {
              String consoleString =
                  "${currentDateValue.year}/${currentDateValue.month}/${currentDateValue.day}";
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.currentDate.value =
                                widget.currentDate.value.subtract(
                              const Duration(days: 1),
                            );
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: AppColors.buttonColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            widget.currentDate.value = await showDatePicker(
                                  context: context,
                                  initialDate: currentDateValue,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2050),
                                ) ??
                                currentDateValue;
                          },
                          child: Text(
                            consoleString,
                            style: TextStyle(
                                color: AppColors.lightTextColor,
                                fontSize: 20.sp),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.currentDate.value =
                                widget.currentDate.value.add(
                              const Duration(days: 1),
                            );
                          },
                          child: Icon(
                            Icons.chevron_right,
                            color: AppColors.buttonColor,
                          ),
                        ),
                      ],
                    ),
                    5.verticalSpace,
                    Expanded(
                      child: ValueListenableBuilder(
                          valueListenable: widget.dataTitle,
                          builder: (context, value, child) {
                            widget.pref.setStringList(
                              consoleString,
                              value.map((e) => e.toJson()).toList(),
                            );
                            if (value.isEmpty) {
                              return Padding(
                                padding: const EdgeInsets.all(24.0).w,
                                child: Center(
                                  child: Image(
                                    image: AssetImage(AppImages.task),
                                  ),
                                ),
                              );
                            }
                            value = value.reversed.toList();
                            return SizedBox.expand(
                              child: RawScrollbar(
                                mainAxisMargin: 15.h,
                                radius: Radius.circular(10.w),
                                thickness: 10,
                                child: ShaderMask(
                                    blendMode: BlendMode.dstOut,
                                    shaderCallback: (Rect rect) {
                                      return LinearGradient(
                                        stops: const [0, .1, .9, 1],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          AppColors.darkBgColor,
                                          Colors.transparent,
                                          Colors.transparent,
                                          AppColors.darkBgColor,
                                        ],
                                      ).createShader(rect);
                                    },
                                    child: ListView.builder(
                                      itemCount: value.length,
                                      itemBuilder: (context, index) {
                                        DataTitle dataTitle = value[index];
                                        return CustomListTile(
                                          title: dataTitle.title,
                                          isCompleted: dataTitle.isCompleted!,
                                          onPressed: () => onPressed(dataTitle),
                                        );
                                      },
                                    )),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
