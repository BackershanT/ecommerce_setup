import 'package:ecommerce_setup/src/core/theme/theme.dart';
import 'package:ecommerce_setup/src/presentation/bottom_navigation_bar.dart';
import 'package:ecommerce_setup/src/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/home/home_page.dart';
import 'presentation/notification/notification_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/notification':(context)=> NotificationScreen(),
        },
        themeMode: ThemeMode.system,
        theme: lightMode,
        darkTheme: darkMode,
        home: LoginScreen(),
      );
    });
  }
}
