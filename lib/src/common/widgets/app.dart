import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature/todo_app/screens/page_controller.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 898),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          title: "TODO app",
          debugShowCheckedModeBanner: false,
          home: const ControllerPage(),
        );
      },
    );
  }
}
