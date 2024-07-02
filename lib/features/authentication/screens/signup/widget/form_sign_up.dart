import 'package:ecommer/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({
    super.key,
  });

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "First name",
                        border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Family name",
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: "Username",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: "Email",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  labelText: "Phone Number",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              obscureText: hidePassword,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    icon: Icon(hidePassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(),
                  labelText: "password"),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: true, onChanged: (value)=>{}),

                const SizedBox(width: 10,),
                const Text("I agree to Privacy Policy and Terms of use")

              ],
            ),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(onPressed: ()=>{Get.to(()=>const VerifyEmailScreen())}, child: const Text("Create Account"))),
          ],
        ));
  }
}
