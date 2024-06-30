import 'package:ecommer/common/styles/space_style.dart';

import 'package:ecommer/utils/helppers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: spaceStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              Column(
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
                    "Wellcome Back,",
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
              ),
              SizedBox(height: 20,),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "email",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder()),
                  )
                ],
              ))
              // form

              //divider

              //footer
            ],
          ),
        ),
      ),
    );
  }
}
