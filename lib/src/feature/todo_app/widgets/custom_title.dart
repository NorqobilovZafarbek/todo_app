import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';
import 'package:todo_app/src/feature/todo_app/widgets/custom_list_tile.dart';

import '../models/todo_item.dart';

class CustomTitle extends StatefulWidget {
  final ValueNotifier<List<DataTitle>> dataTitle;

  const CustomTitle({
    required this.dataTitle,
    super.key,
  });

  @override
  State<CustomTitle> createState() => _CustomTitleState();
}

class _CustomTitleState extends State<CustomTitle> {
  late ScrollController scrollController;

  void onPressed(DataTitle dataTitle) {
    List<DataTitle> temp = widget.dataTitle.value;
    int pos = temp.indexOf(dataTitle);
    temp[pos].isCompleted = !temp[pos].isCompleted!;
    widget.dataTitle.value = temp.toList();
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
          child: RawScrollbar(
            mainAxisMargin: 15.h,
            controller: scrollController,
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
              child: ValueListenableBuilder(
                valueListenable: widget.dataTitle,
                builder: (context, value, child) {
                  return value.isEmpty
                      ? const Center(
                          child: Image(
                            image: AssetImage('assets/images/task.png'),
                          ),
                        )
                      : ListView(
                          controller: scrollController,
                          children: List.generate(
                            value.length,
                            (index) {
                              DataTitle dataTitle = value[index];
                              return CustomListTile(
                                title: dataTitle.title,
                                isCompleted: dataTitle.isCompleted!,
                                onPressed: () => onPressed(dataTitle),
                              );
                            },
                          ),
                        );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
