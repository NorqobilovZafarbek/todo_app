import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';
import 'package:todo_app/src/feature/todo_app/widgets/custom_list_tile.dart';

import '../models/todo_item.dart';

class CustomTitle extends StatelessWidget {

  final DataTitle dataTitle;

  const CustomTitle({Key? key, required this.dataTitle,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 346.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.darkBgColor,
              border: Border.all(color: AppColors.borderColor, width: 3),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(23),
                topRight: Radius.circular(23),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: ShaderMask(
                blendMode: BlendMode.dstOut,
                shaderCallback: (Rect rect) {
                  return LinearGradient(
                    stops: [0, .1, .9, 1],
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
                child: Scrollbar(
                  radius: const Radius.circular(10),
                  // isAlwaysShown: true,
                  thickness: 10,
                  child: ListView(
                    children: List.generate(10, (index) =>
                        CustomListTile(title: dataTitle.title , isCompleted: dataTitle.isCompleted!)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
