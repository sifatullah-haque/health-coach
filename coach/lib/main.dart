import 'package:coach/pages/login_signup/login_page.dart';

import 'package:coach/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (context, child) {
        return MaterialApp(
          home: LoginPage(),
          theme: lightMode,
        );
      },
    );
  }
}
