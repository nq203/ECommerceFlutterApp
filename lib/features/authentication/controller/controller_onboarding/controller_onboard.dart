import 'package:ecommer/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void nextPage() {
    if (currentPageIndex.value < 2) {
      currentPageIndex.value += 1;
      pageController.jumpToPage(currentPageIndex.value);
    } else {
      Get.offAll(() =>const LoginScreen());
    }
  }

  void skipPage() {
    pageController.jumpToPage(2);
    print(currentPageIndex.value);
  }
}
