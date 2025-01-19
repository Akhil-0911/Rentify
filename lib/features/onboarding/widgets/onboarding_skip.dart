import 'package:flutter/material.dart';
import 'package:rentify/utils/constants/sizes.dart';
import 'package:rentify/utils/device/device_utility.dart';
import '../../authentication/screens/login/login.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          // Skip the onboarding and navigate to the login screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
        child: const Text('Skip'),
      ),
    );
  }
}
