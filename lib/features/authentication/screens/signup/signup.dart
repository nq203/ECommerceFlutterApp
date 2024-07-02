
import 'package:ecommer/features/authentication/screens/login/widget/divider.dart';
import 'package:ecommer/features/authentication/screens/login/widget/footer.dart';
import 'package:ecommer/features/authentication/screens/signup/widget/form_sign_up.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20,),
              const FormSignUp(),
              const SizedBox(height: 20,),
              const Cusdevider(),
              const SizedBox(height: 20,),
              const Cusfooter(),
            ],
          ),
        ),
      ),
    );
  }
}

