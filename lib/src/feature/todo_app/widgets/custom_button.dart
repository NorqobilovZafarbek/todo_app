import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';

import '../models/todo_item.dart';

class CustomButton extends StatefulWidget {
  final ValueNotifier<List<DataTitle>> list;

  const CustomButton({super.key, required this.list});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        textController.clear();
        showModalBottomSheet(
          isScrollControlled: true,
          constraints: BoxConstraints(minHeight: 400.h),
          context: context,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                top: 15.h,
                left: 20.w,
                right: 20.w,
                // bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Enter your to-do',
                          style: TextStyle(
                            color: AppColors.darkTextColor,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            if (textController.text.isNotEmpty) {
                              List<DataTitle> temp = widget.list.value;
                              temp.add(DataTitle(title: textController.text));
                              widget.list.value = temp.toList();
                              textController.clear();
                            }
                            textController.clear();
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.check,
                            color: AppColors.selectedIconColor,
                            size: 30.h,
                          ),
                        )
                      ],
                    ),
                  ),
                  TextField(
                    controller: textController,
                    minLines: 1,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: '',
                    ),
                    autofocus: true,
                  ),
                ],
              ),
            );
          },
        );
      },
      style: FilledButton.styleFrom(
        elevation: 4,
        fixedSize: Size(346.w, 44.h),
        backgroundColor: AppColors.buttonColor,
        surfaceTintColor: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Add task',
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: AppColors.darkTextColor,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            Icons.add_circle_sharp,
            size: 24.h,
            color: AppColors.selectedIconColor,
          )
        ],
      ),
    );
  }
}
