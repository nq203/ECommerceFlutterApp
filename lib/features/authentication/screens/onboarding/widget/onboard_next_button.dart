import 'package:ecommer/features/authentication/controller/controller_onboarding/controller_onboard.dart';
import 'package:ecommer/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class onboardNextButton extends StatelessWidget {
  const onboardNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        bottom: DeviceUtils.getAppBarHeight(),
        right: 10,
        child: ElevatedButton(
          onPressed: controller.nextPage,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          style: ElevatedButton.styleFrom(shape: CircleBorder()),
        ));
  }
}

