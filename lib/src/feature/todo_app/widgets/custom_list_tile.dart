import 'package:flutter/material.dart';

import '../../../common/constants/images.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final bool isCompleted;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.isCompleted,
  }) : super(key: key);

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
      title: Text(
        widget.title,
        style: const TextStyle(color: Colors.white),
      ),
      leading: GestureDetector(
        onTap: () {
          setState(() {
            isCompleted = !isCompleted;
          });
        },
        child: Image(
          width: 25,
          height: 25,
          image: widget.isCompleted ? AssetImage(AppImages.chekSquare) : AssetImage(AppImages.square),
        ),
      ),
    );
  }
}
