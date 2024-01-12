import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

import '../Models/model.dart';

class My_Home_Screen extends StatefulWidget {
  const My_Home_Screen({super.key});
  @override
  State<My_Home_Screen> createState() => _My_Home_ScreenState();
}

class _My_Home_ScreenState extends State<My_Home_Screen> {
  final String endPonit = "http://192.168.17.69/dalab%20app/products.php";
  List<ProductModel> product_data = [];
  Future<List<ProductModel>> getProducts() async {
    List<ProductModel> product = [];
    try {
      http.Response response = await http.post(
        Uri.parse(endPonit),
        body: {'action': 'getNewProducts'},
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
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("DALAB APP"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/usr4.jpg",
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  FutureBuilder(
                    future: SessionManager().get("name"),
                    builder: (context, snapshot) {
                      print(snapshot.data);
                      return Text(
                        snapshot.data != ''
                            ? snapshot.data.toString()
                            : "Loading...",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 28.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                      onTap: () {
                        SessionManager().set("name", '');
                        SessionManager().set("mobile", '');
                        SessionManager().set("email", '');
                        SessionManager().set("address", '');
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return My_First_Screen();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(),
                        child: Text(
                          "LOG OUT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image_2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(1.0),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 28.0,
                        horizontal: 15.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fashion \nsale",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Material(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return My_Fashion_sale_check(
                                    product: product_data,
                                  );
                                }));
                              },
                              child: Container(
                                width: 150,
                                height: 38,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(),
                                child: Text(
                                  "Check",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 28.0,
                horizontal: 15.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            " You 've never seen it before!",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          product_data.isEmpty
                              ? null
                              : Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                  return My_New_Products_Screen(
                                    product: product_data,
                                  );
                                }));
                        },
                        child: Text(
                          "view all",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18.0,
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
                            product_data = snapshot.data!;
                            return SizedBox(
                              height: 290,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, int index) {
                                  return Sales_New_Screen(
                                    product: product_data[index],
                                  );
                                },
                                separatorBuilder: (context, int index) {
                                  return const SizedBox(
                                    width: 15.0,
                                  );
                                },
                                itemCount: product_data.length,
                              ),
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
      ),
    );
  }
}
