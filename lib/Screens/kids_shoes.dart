import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';

class My_Kids_Shoes_Screen extends StatefulWidget {
  const My_Kids_Shoes_Screen({super.key});

  @override
  State<My_Kids_Shoes_Screen> createState() => _My_Kids_Shoes_ScreenState();
}

class _My_Kids_Shoes_ScreenState extends State<My_Kids_Shoes_Screen> {
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
              Icons.shopping_bag,
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
                        "Kids Shoes",
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
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: Offset(
                              1,
                              1,
                            ),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          labelText: 'Search Product',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27.0,
                    ),
                    GridView.builder(
                      cacheExtent: 280,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      // mainAxisAlignment: MainAxisAlignment.start,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 15,
                        mainAxisExtent: 300,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return My_Kids_Shoes_Widget();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: Material(
          color: Colors.red,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return My_Cart_Screen();
              }));
            },
            child: Container(
              width: double.infinity,
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(),
              child: Text(
                "View Cart" + " \$300.00",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
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
