import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

import '../Models/model.dart';

class My_Men_Shoes_Screen extends StatefulWidget {
  const My_Men_Shoes_Screen({super.key});

  @override
  State<My_Men_Shoes_Screen> createState() => _My_Men_Shoes_ScreenState();
}

class _My_Men_Shoes_ScreenState extends State<My_Men_Shoes_Screen> {
  final String endPonit = "http://192.168.17.69/dalab%20app/products.php";
  Future<List<ProductModel>> getProducts() async {
    List<ProductModel> product = [];
    try {
      http.Response response = await http.post(
        Uri.parse(endPonit),
        body: {'action': 'getMenShoesProducts'},
      );
      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        product = data.map((e) => ProductModel.fromJson(e)).toList();
      } else {
        print(response.body);
      }
    } on SocketException {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("No internet"),
        ),
      );
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
    return product;
  }

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
                    FutureBuilder(
                      future: getProducts(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          default:
                            if (snapshot.data != null) {
                              List<ProductModel> data = snapshot.data!;
                              return GridView.builder(
                                cacheExtent: 280,
                                shrinkWrap: true,

                                physics: NeverScrollableScrollPhysics(),
                                // mainAxisAlignment: MainAxisAlignment.start,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 15,
                                  mainAxisExtent: 300,
                                ),
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return My_Men_Shoes_Widget(
                                    product: data[index],
                                  );
                                },
                              );
                            } else {
                              return Center(
                                child: Text("No Data Found..."),
                              );
                            }
                        }
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
