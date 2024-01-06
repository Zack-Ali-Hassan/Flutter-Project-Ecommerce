import 'package:flutter/material.dart';
import 'package:e_commerce_project_app/Screens/screen.dart';

class My_First_Screen extends StatefulWidget {
  const My_First_Screen({super.key});

  @override
  State<My_First_Screen> createState() => _My_First_ScreenState();
}

class _My_First_ScreenState extends State<My_First_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    // image: AssetImage("assets/images/bc.avif"),
                    image: NetworkImage(
                        "https://st.depositphotos.com/1001877/3814/i/450/depositphotos_38143799-stock-photo-e-commerce-shopping-cart-with.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.9),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Column(
                      //   children: [
                      //     Container(
                      //       width: 80,
                      //       height: 80,
                      //       decoration: BoxDecoration(
                      //           // image: DecorationImage(
                      //           //   image: AssetImage("assets/images/logo11.png"),
                      //           // ),
                      //           ),
                      //     ),
                      //     Transform.translate(
                      //       offset: (Offset(0, -20)),
                      //       child: Text(
                      //         "Photography",
                      //         style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w700,
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     horizontal: 20,
                      //   ),
                      //   child: Material(
                      //     borderRadius: BorderRadius.circular(
                      //       10.0,
                      //     ),
                      //     child: InkWell(
                      //       borderRadius: BorderRadius.circular(
                      //         10.0,
                      //       ),
                      //       onTap: () {
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //             builder: (_) {
                      //               return My_Login_Screen();
                      //             },
                      //           ),
                      //         );
                      //       },
                      //       child: Container(
                      //         width: double.infinity,
                      //         height: 60,
                      //         decoration: BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.circular(
                      //             10.0,
                      //           ),
                      //         ),
                      //         child: Align(
                      //           alignment: Alignment.center,
                      //           child: Text(
                      //             "Login",
                      //             style: TextStyle(
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.w600,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return My_Signin_Screen();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "GET START",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
