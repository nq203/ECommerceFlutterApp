import 'package:ecommer/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommer/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: CusTheme.lightTheme,
      darkTheme: CusTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
