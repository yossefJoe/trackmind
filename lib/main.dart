import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/themes.dart';
import 'package:trackmind/core/utils/resources/app_router.dart';
import 'package:trackmind/features/home/presentation/views/pages/nav_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            title: 'Track Mind',
            theme: ProjectThemes.lightTheme,
          ),
        ],
      ),

    );
  }
}
