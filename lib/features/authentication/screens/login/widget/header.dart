import 'package:flutter/material.dart';

import '../../../../../utils/helppers/helper_functions.dart';

class header extends StatelessWidget {
  const header({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Image(
            height: HelperFunction.screenWidth() * 0.3,
            image: AssetImage(isDarkMode
                ? "assets/logos/logo_white.png"
                : "assets/logos/logo_dark.png")),
        SizedBox(
          height: 5,
        ),
        Text(
          "Wellcome Back",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "nhìn theo bóng dáng ai dần xa...",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
