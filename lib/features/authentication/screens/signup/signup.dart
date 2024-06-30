
import 'package:ecommer/features/authentication/screens/login/widget/divider.dart';
import 'package:ecommer/features/authentication/screens/login/widget/footer.dart';
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
              Form(
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
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),onPressed: ()=>{},),
                        labelText: "Password",
                        border: OutlineInputBorder()),
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
                  SizedBox(height: 10,),
                  Cusdevider(),
                  SizedBox(height: 10,),
                  Cusfooter(),
        
        
        
        
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
