import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';

class My_Success_Screen extends StatefulWidget {
  const My_Success_Screen({super.key});

  @override
  State<My_Success_Screen> createState() => _My_Success_ScreenState();
}

class _My_Success_ScreenState extends State<My_Success_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 18.0,
            left: 10.0,
            right: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 80.0,
                  bottom: 30.0,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/successfull.png")),
                      ),
                    ),
                    const SizedBox(
                      height: 55.0,
                    ),
                    Text(
                      "Success!",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Your order will be delivered soon. \nThank you for choosing our app!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
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
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return BottomBar();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(),
                        child: Text(
                          "CONTINUE SHOPPING",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
