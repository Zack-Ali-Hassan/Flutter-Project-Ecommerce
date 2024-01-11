import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import '../Models/model.dart';

class My_Fashion_sale_check extends StatefulWidget {
  const My_Fashion_sale_check({super.key, required this.product});
  final List<ProductModel> product;
  @override
  State<My_Fashion_sale_check> createState() => _My_Fashion_sale_checkState();
}

class _My_Fashion_sale_checkState extends State<My_Fashion_sale_check> {
  final String endPonit = "http://192.168.17.69/dalab%20app/products.php";
  List<ProductModel> product_data = [];
  List<ProductModel> product_data_discount = [];
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

  Future<List<ProductModel>> getProductsDiscount() async {
    List<ProductModel> product = [];
    try {
      http.Response response = await http.post(
        Uri.parse(endPonit),
        body: {'action': 'getDiscountProducts'},
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
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 150,
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
                            "street clothes",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
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
                            "Sale",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Super summer sale",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                           product_data_discount.isEmpty
                              ? null
                              :
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return My_Discount_Products_Screen();
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
                    future: getProductsDiscount(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        default:
                          if (snapshot.data != null) {
                            product_data_discount = snapshot.data!;
                            return SizedBox(
                              height: 290,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, int index) {
                                  return Sales_Discount_Widget(
                                    product: product_data_discount[index],
                                  );
                                },
                                separatorBuilder: (context, int index) {
                                  return const SizedBox(
                                    width: 15.0,
                                  );
                                },
                                itemCount: product_data_discount.length,
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
            //New Sales
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
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
                                    product: widget.product,
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
