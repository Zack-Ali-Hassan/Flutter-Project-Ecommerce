import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  dynamic token = SessionManager().get("mobile");
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

      home: token != '' ? BottomBar() : My_First_Screen(),
    );
  }
}
