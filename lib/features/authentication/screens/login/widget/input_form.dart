import 'package:ecommer/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inputForm extends StatefulWidget {
  const inputForm({
    super.key,
  });

  @override
  State<inputForm> createState() => _inputFormState();
}

class _inputFormState extends State<inputForm> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
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
              obscureText: hidePassword,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
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
                  border: OutlineInputBorder(),
                  labelText: "password"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) => {}),
                    Text("Remember me!"),
                  ],
                ),
                TextButton(onPressed: () => {}, child: Text("Forget Password?")),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(onPressed: () => {}, child: Text("Login"))),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                    onPressed: () => {Get.to(()=> SignUpScreen())}, child: Text("Create Account"))),
          ],
        ));
  }
}