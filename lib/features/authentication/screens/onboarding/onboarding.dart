import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller_onboarding/controller_onboard.dart';
import 'widget/onboard_dot_navigation.dart';
import 'widget/onboard_next_button.dart';
import 'widget/onboard_skip.dart';
import 'widget/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: 'assets/images/onboard_image/delivery.png',
                title: "Delivery",
                subtitle: "muốn quay về những ngày xưa",
              ),
              onBoardingPage(
                image: 'assets/images/onboard_image/searching.png',
                title: "Searching",
                subtitle: "để anh quay lưng bước đi",
              ),
              onBoardingPage(
                image: 'assets/images/onboard_image/shopping.png',
                title: "Shopping",
                subtitle: "em ơi có nghe",
              ),
            ],
          ),
          const onboardSkipButton(),
          const onboardDotNavigation(),
          const onboardNextButton(),
        ],
      ),
    );
  }
}

