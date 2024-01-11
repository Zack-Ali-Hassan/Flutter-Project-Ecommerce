import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import '../Models/model.dart';

class My_Discount_Products_Screen extends StatefulWidget {
  const My_Discount_Products_Screen({super.key});
  @override
  State<My_Discount_Products_Screen> createState() =>
      _My_Discount_Products_ScreenState();
}

class _My_Discount_Products_ScreenState
    extends State<My_Discount_Products_Screen> {
  final String endPonit = "http://192.168.17.69/dalab%20app/products.php";
  List<ProductModel> product_data_discount = [];
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
          "Discount Products",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: FutureBuilder(
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
                  return GridView.builder(
                    // mainAxisAlignment: MainAxisAlignment.start,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: product_data_discount.length,
                    itemBuilder: (context, index) {
                      return My_Discount_Products_Widget(
                        product: product_data_discount[index],
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
      ),
    );
  }
}
