import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.check,
                              color: AppColors.selectedIconColor,
                              size: 30.h,
                            ),
                          )
                        ],
                      ),
                    ),
                    const TextField(
                      minLines: 1,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: '',
                        // border: OutlineInputBorder(),
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
        ));
  }
}
