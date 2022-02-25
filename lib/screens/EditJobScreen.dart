import 'package:first_project/screens/JobListingScreen.dart';
import 'package:flutter/material.dart';

import '../components/app_button.dart';
import '../components/app_textfield.dart';
import 'RegisterScreen.dart';

class EditJobScreen extends StatelessWidget {

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
                const Text("Edit Job",
                    style: TextStyle(
                        color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600, letterSpacing: -0.5
                    )
                )
              ],
            ),
            AppTextField(
                marginTop: 31,
                maximumLines: 1,
                text: "Flutter Developer",
                paddingAll: 15
            ),
            AppTextField(
                marginTop: 25,
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.",
                maximumLines: 11,
                paddingAll: 15
            ),
            const Spacer(),
  //          const SizedBox(height: 270),
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
