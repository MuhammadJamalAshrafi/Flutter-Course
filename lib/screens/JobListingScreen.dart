import 'package:first_project/components/app_listview_card.dart';
import 'package:first_project/screens/AddJobScreen.dart';
import 'package:flutter/material.dart';

import '../components/app_textfield.dart';

class JobListingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      floatingActionButton: Container(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AddJobScreen())
            );
          },
          child: const Icon(
            Icons.add,
            size: 50,
            color: Color(0xFF191720),
          ),
        ),
      ),
        backgroundColor: const Color(0xFF191720),
        body: Padding(
          padding: const EdgeInsets.only(top: 79, left: 27, right: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               children: [
                 const Text("Welcome",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                 const Spacer(),
                 Container(
                   padding: const EdgeInsets.all(5),//I used some padding without fixed width and height
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,// You can use like this way or like the below line
                     //borderRadius: new BorderRadius.circular(30.0),
                     color: const Color(0xFF191720),
                     border: Border.all(
                         color: Colors.white,
                         width: 1
                     ),
                   ),
                   child: const Icon(Icons.arrow_back_sharp, size: 25.0, color: Colors.white)
                 ),
               ],
             ),
              const Text("Ishaq Hassan",
                style: TextStyle(fontSize: 25, color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
              ),
              AppTextField(placeholder: "Search keywords.", marginTop: 19, maximumLines: 1, text: '', paddingAll: 8, isIcon: true),
              const SizedBox(height: 15),
              Expanded(
                  child: ListView(
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.only(top: 11),
                          children: <Widget>[
                            AppListViewCard(),
                            AppListViewCard(),
                            AppListViewCard(),
                            AppListViewCard(),
                            AppListViewCard(),
                            AppListViewCard(),
                            AppListViewCard(),
                            AppListViewCard()
                          ]
                  )
              )
            ]
        ),
      ),
    );
  }
}
