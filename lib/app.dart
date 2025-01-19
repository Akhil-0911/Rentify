import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentify/utils/theme/theme.dart';

import 'features/onboarding/onboarding.dart';

/// Use this Class to setup themes, initial bindings, any animations, and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme, // Fixed spacing issue
      home: const OnBoardingScreen(),
    ); // GetMaterialApp
  }
}
