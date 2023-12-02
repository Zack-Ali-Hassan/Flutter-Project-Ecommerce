import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';

class My_Men_Shoes_Screen extends StatefulWidget {
  const My_Men_Shoes_Screen({super.key});

  @override
  State<My_Men_Shoes_Screen> createState() => _My_Men_Shoes_ScreenState();
}

class _My_Men_Shoes_ScreenState extends State<My_Men_Shoes_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Men Shoes",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.filter_list_outlined,
                              color: Colors.black,
                              size: 18,
                            ),
                            label: Text(
                              "Filters",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Row(
                              children: [
                                Icon(
                                  Icons.arrow_upward,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ],
                            ),
                            label: Text(
                              "Price: lowest to high",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    My_Men_Shoes_Widget(),
                    const SizedBox(
                      height: 27.0,
                    ),
                    My_Men_Shoes_Widget(),
                    const SizedBox(
                      height: 27.0,
                    ),
                    My_Men_Shoes_Widget(),
                    const SizedBox(
                      height: 27.0,
                    ),
                    My_Men_Shoes_Widget(),
                    const SizedBox(
                      height: 27.0,
                    ),
                    My_Men_Shoes_Widget(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
