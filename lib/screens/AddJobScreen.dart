import 'package:first_project/screens/JobListingScreen.dart';
import 'package:first_project/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

import '../components/app_button.dart';
import '../components/app_textfield.dart';

class AddJobScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 89, left: 27, right: 27, bottom: 59),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => JobListingScreen())
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 35,
                    )
                ),
                const SizedBox(width: 31),
                const Text("Add New Job",
                    style: TextStyle(
                        color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600, letterSpacing: -0.5
                    )
                )
              ],
            ),
            AppTextField(
                placeholder: "Enter position name",
                marginTop: 31,
                maximumLines: 1,
                text: '',
                paddingAll: 15
            ),
            AppTextField(
                placeholder: "Describe Requirement...",
                marginTop: 25,
                maximumLines: 11,
                text: '',
                paddingAll: 15
            ),
            const Spacer(),
//            const SizedBox(height: 270),
            AppButton(label: 'Submit Job', onPress: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => JobListingScreen())
              );
            })
          ],
        ),
      ),
    );
  }

}
