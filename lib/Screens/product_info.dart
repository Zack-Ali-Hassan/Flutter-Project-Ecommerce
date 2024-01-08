import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../Models/model.dart';

class My_Product_Info_Screen extends StatefulWidget {
  const My_Product_Info_Screen({super.key, required this.product});
  final ProductModel product;

  @override
  State<My_Product_Info_Screen> createState() => _My_Product_Info_ScreenState();
}

class _My_Product_Info_ScreenState extends State<My_Product_Info_Screen> {
  final List<String> size = ['M', 'L', 'XL', 'XXL', 'XXL'];
  String selectedSize = 'M';
  final List<String> colors = ['Black', 'White', 'Red', 'Blue', 'Grey'];
  String selectedColor = 'Black';
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
          "Product Information",
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
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(widget.product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 10.0, top: 5.0, bottom: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            height: 40,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(
                            //     10,
                            //   ),
                            //   border: Border.all(
                            //     color: Colors.red,
                            //   ),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: selectedSize,
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    selectedSize = newValue;
                                  }
                                },
                                items: size.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 40,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(
                            //     10,
                            //   ),
                            //   border: Border.all(
                            //     color: Colors.red,
                            //   ),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: selectedColor,
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    selectedColor = newValue;
                                  }
                                },
                                items: colors.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              onTap: () {
                                print("Added favorites");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 8,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: LikeButton(
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.product.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "\$ " + widget.product.price,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.product.description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          color: Colors.red,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return My_Cart_Screen();
              }));
            },
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(),
              child: Text(
                "Add To Cart",
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
}
