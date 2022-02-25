import 'package:first_project/screens/AddJobScreen.dart';
import 'package:first_project/screens/EditJobScreen.dart';
import 'package:first_project/screens/JobListingScreen.dart';
import 'package:first_project/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: RegisterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


