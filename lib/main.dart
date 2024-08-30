import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_tutorial/home_page/home_page_mobile.dart';
import 'package:responsive_tutorial/home_page/home_page_web.dart';
import 'package:responsive_tutorial/responive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const MaterialApp(
            title: 'Responsive Tutorial',
            home: ResponsiveWidget(
              mobile: HomePageMobile(),
              web: HomePageWeb(),
            ),
          );
        });
  }
}
