import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(
          0xffF9F9F9,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: BottomBar(),

      home: My_First_Screen(),
    );
  }
}
