import 'package:ecommer/features/authentication/controller/controller_onboarding/controller_onboard.dart';
import 'package:ecommer/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardDotNavigation extends StatelessWidget {
  const onboardDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        bottom: DeviceUtils.getNavigationBarHeight() + 25,
        left: 10,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: Colors.black, dotHeight: 6),
        ));
  }
}

