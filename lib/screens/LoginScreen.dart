import 'package:first_project/components/app_button.dart';
import 'package:first_project/screens/JobListingScreen.dart';
import 'package:first_project/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:first_project/components/app_textfield.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let’s sign you in",
              style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 14),
            const Text("Welcome back\nyou’ve been missed !",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 47),
            AppTextField(placeholder: "Enter your email address", marginTop: 20, maximumLines: 1, text: '', paddingAll: 15),
            AppTextField(placeholder: "Enter your password", marginTop: 20, maximumLines: 1, text: '', paddingAll: 15),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have an account ? ',
                  style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => RegisterScreen())
                    );
                  },
                  child: Text('Register',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 11),
            AppButton(label: 'Sign In', onPress: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => JobListingScreen())
              );
            })
          ],
        ),
      ),
    );
  }

  void onSignInPress(){

  }
}