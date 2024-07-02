import 'package:ecommer/common/styles/space_style.dart';
import 'package:ecommer/features/authentication/screens/login/login.dart';
import 'package:ecommer/utils/constants/text_strings.dart';
import 'package:ecommer/utils/helppers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.xmark))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child:Column(
            children: [
              Image(image: AssetImage('assets/images/animations/sammy-line-man-receives-a-mail.png'),width: HelperFunction.screenWidth()*0.6,),
              SizedBox(height: 10,),
              Text(ConsTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: 10,),
              Text("quanc@gmail.com",style: Theme.of(context).textTheme.labelLarge,),
              SizedBox(height: 10,),
              Text(ConsTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,),
              //button
              SizedBox(height: 20,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>{},child: Text('Continue'),),),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: ()=>{},child: Text('Resend Email'),),),

            ],
          ),
        ),
      ),
    );
  }
}
