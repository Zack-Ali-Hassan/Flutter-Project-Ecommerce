import 'package:e_commerce_project_app/Widgets/widget.dart';
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
                        "Favorites",
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
                            onPressed: () {
                              _showModalBottomSheet(context);
                            },
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
                            onPressed: () {
                              _showModalBottomSheet(context);
                            },
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
                    My_Favorite_Widget(),
                    const SizedBox(
                      height: 27.0,
                    ),
                    My_Favorite_Widget(),
                    const SizedBox(
                      height: 27.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                50.0,
              ),
              topRight: Radius.circular(
                50.0,
              ),
            ),
          ),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.0),
                  Text(
                    'Sort by',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      _showModalBottomSheet(context);
                    },
                    child: Text(
                      "Newest",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextButton(
                    onPressed: () {
                      _showModalBottomSheet(context);
                    },
                    child: Text(
                      "Price: lowest to high",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextButton(
                    onPressed: () {
                      _showModalBottomSheet(context);
                    },
                    child: Text(
                      "Price: Highest to low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
