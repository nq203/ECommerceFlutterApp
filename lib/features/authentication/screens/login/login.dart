import 'package:ecommer/common/styles/space_style.dart';
import 'package:ecommer/features/authentication/screens/login/widget/header.dart';

import 'package:ecommer/utils/helppers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/divider.dart';
import 'widget/footer.dart';
import 'widget/input_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunction.isDarkMode(context);
    bool hidePassword = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: spaceStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              header(isDarkMode: isDarkMode),
              const SizedBox(
                height: 20,
              ),
              const inputForm(),
              const SizedBox(
                height: 20,
              ),
              const Cusdevider(),
              const SizedBox(
                height: 20,
              ),
              const Cusfooter()
            ],
          ),
        ),
      ),
    );
  }
}

