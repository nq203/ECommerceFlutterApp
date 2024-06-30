import 'package:ecommer/utils/helppers/helper_functions.dart';
import 'package:flutter/material.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: HelperFunction.screenWidth() * 0.8,
            height: HelperFunction.screenHeight()*0.6,
          ),
          Text(title,style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: 10,),
          Text(subtitle,style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
    );
  }
}