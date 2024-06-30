import 'package:ecommer/features/authentication/controller/controller_onboarding/controller_onboard.dart';
import 'package:ecommer/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class onboardSkipButton extends StatelessWidget {
  const onboardSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        top: DeviceUtils.getAppBarHeight(),
        right: 10,
        child:  TextButton(onPressed: controller.skipPage, child: Text("Skip")));
  }
}
