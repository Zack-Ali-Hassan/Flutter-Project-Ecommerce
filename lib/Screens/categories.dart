import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';

class My_Categories_Screen extends StatefulWidget {
  const My_Categories_Screen({super.key});

  @override
  State<My_Categories_Screen> createState() => _My_Categories_ScreenState();
}

class _My_Categories_ScreenState extends State<My_Categories_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 22,
            ),
          ),
          title: Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              color: Colors.black,
            ),
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
            tabs: [
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Men",
              ),
              Tab(
                text: "Kids",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Women_Widget(),
            Men_Widget(),
            Kids_Widget(),
          ],
        ),
      ),
    );
  }
}
