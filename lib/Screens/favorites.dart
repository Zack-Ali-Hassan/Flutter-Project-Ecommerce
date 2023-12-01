import 'package:flutter/material.dart';

class My_Favorite_Screen extends StatefulWidget {
  const My_Favorite_Screen({super.key});

  @override
  State<My_Favorite_Screen> createState() => _My_Favorite_ScreenState();
}

class _My_Favorite_ScreenState extends State<My_Favorite_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: Center(
        child: Text('Favorite Screen'),
      ),
    );
  }
}
