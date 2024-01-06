import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:e_commerce_project_app/Widgets/widget.dart';
import 'package:flutter/material.dart';

class My_Cart_Screen extends StatefulWidget {
  const My_Cart_Screen({super.key});

  @override
  State<My_Cart_Screen> createState() => _My_Cart_ScreenState();
}

class _My_Cart_ScreenState extends State<My_Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Bag",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 18.0),
                My_Cart_Widget(),
                const SizedBox(
                  height: 15.0,
                ),
                My_Cart_Widget(),
                const SizedBox(
                  height: 15.0,
                ),
                My_Cart_Widget(),
                const SizedBox(height: 18.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total amount:",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "125\$",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18.0),
                Material(
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
                        return My_Checkout_Screen();
                      }));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Text(
                        "CHECK OUT",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
