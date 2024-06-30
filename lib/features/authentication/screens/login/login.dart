import 'package:ecommer/common/styles/space_style.dart';
import 'package:ecommer/features/authentication/screens/login/widget/header.dart';

import 'package:ecommer/utils/helppers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              SizedBox(
                height: 20,
              ),
              inputForm(),
              SizedBox(
                height: 20,
              ),
              Cusdevider(),
              SizedBox(
                height: 20,
              ),
              Cusfooter()
            ],
          ),
        ),
      ),
    );
  }
}

