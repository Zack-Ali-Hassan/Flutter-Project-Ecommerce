import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';

import '../Models/model.dart';

class My_New_Products_Screen extends StatefulWidget {
  const My_New_Products_Screen({super.key, required this.product});
  final List<ProductModel> product;
  @override
  State<My_New_Products_Screen> createState() => _My_New_Products_ScreenState();
}

class _My_New_Products_ScreenState extends State<My_New_Products_Screen> {
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
          "New Products",
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
          child: GridView.builder(
            // mainAxisAlignment: MainAxisAlignment.start,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
            ),
            itemCount: widget.product.length,
            itemBuilder: (context, index) {
              return New_Products_Screen_Widget(
                product: widget.product[index],
              );
            },
          )),
    );
  }
}
