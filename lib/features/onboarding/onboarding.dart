import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentify/features/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:rentify/features/onboarding/widgets/onboarding_next_button.dart';
import 'package:rentify/features/onboarding/widgets/onboarding_page.dart';
import 'package:rentify/features/onboarding/widgets/onboarding_skip.dart';
import 'package:rentify/utils/constants/image_strings.dart';
import 'package:rentify/utils/constants/text_strings.dart';
import 'onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final pageController = PageController();
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation
          const OnBoardingDotNavigation(),

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
