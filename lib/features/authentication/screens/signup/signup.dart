
import 'package:ecommer/features/authentication/screens/login/widget/divider.dart';
import 'package:ecommer/features/authentication/screens/login/widget/footer.dart';
import 'package:ecommer/features/authentication/screens/signup/widget/form_sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20,),
              FormSignUp(),
              SizedBox(height: 20,),
              Cusdevider(),
              SizedBox(height: 20,),
              Cusfooter(),
            ],
          ),
        ),
      ),
    );
  }
}

