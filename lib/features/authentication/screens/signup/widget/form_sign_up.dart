import 'package:flutter/material.dart';

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
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "First name",
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Family name",
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: "Username",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: "Email",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  labelText: "Phone Number",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10,),
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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: true, onChanged: (value)=>{}),

                SizedBox(width: 10,),
                Text("I agree to Privacy Policy and Terms of use")

              ],
            ),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(onPressed: ()=>{}, child: Text("Create Account"))),
          ],
        ));
  }
}
