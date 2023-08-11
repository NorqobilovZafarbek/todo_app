import 'package:flutter/material.dart';
import 'package:todo_app/src/common/constants/app_colors.dart';

import '../../../common/constants/app_images.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final bool isCompleted;
  final void Function() onPressed;

  const CustomListTile({
    required this.title,
    required this.isCompleted,
    required this.onPressed,
    super.key,
  });

  @override
  State<CustomListTile> createState() => _CustomListTile();
}

class _CustomListTile extends State<CustomListTile> {
  late String title;
  late bool isCompleted;

  @override
  void initState() {
    title = widget.title;
    isCompleted = widget.isCompleted;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -2),
      title: Text(
        widget.title,
        style: TextStyle(
          color: Colors.white,
          decoration: widget.isCompleted ? TextDecoration.lineThrough : null,
          decorationColor: AppColors.selectedIconColor,
          decorationThickness: 2,
        ),
      ),
      leading: GestureDetector(
        onTap: widget.onPressed,
        child: Image(
          width: 25,
          height: 25,
          image: widget.isCompleted
              ? AssetImage(AppImages.checkSquare)
              : AssetImage(AppImages.square),
        ),
      ),
    );
  }
}
