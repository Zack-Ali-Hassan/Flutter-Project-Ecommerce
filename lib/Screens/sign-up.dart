import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';

class My_Signin_Screen extends StatefulWidget {
  const My_Signin_Screen({super.key});

  @override
  State<My_Signin_Screen> createState() => _My_Signin_ScreenState();
}

class _My_Signin_ScreenState extends State<My_Signin_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Text(
                        "Lets help to register application",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        "assets/images/register.webp",
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                        top: 0.0,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          hintText: "Enter your name",
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                        top: 0.0,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                        top: 0.0,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          hintText: "Enter your mobile",
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                        top: 0.0,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          hintText: "Enter your address",
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // Container(
                    //   width: double.infinity,
                    //   padding: EdgeInsets.only(
                    //     left: 0.0,
                    //     right: 0.0,
                    //     top: 0.0,
                    //   ),
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(7.0),
                    //   ),
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black),
                    //         borderRadius: BorderRadius.circular(7),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.red, width: 2),
                    //         borderRadius: BorderRadius.circular(7),
                    //       ),
                    //       hintText: "Enter your password",
                    //       hintStyle: TextStyle(
                    //         fontSize: 15,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 20.0,
                    // ),
                    // Container(
                    //   width: double.infinity,
                    //   padding: EdgeInsets.only(
                    //     left: 0.0,
                    //     right: 0.0,
                    //     top: 0.0,
                    //   ),
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(7.0),
                    //   ),
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black),
                    //         borderRadius: BorderRadius.circular(7),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.red, width: 2),
                    //         borderRadius: BorderRadius.circular(7),
                    //       ),
                    //       hintText: "Enter confirm password",
                    //       hintStyle: TextStyle(
                    //         fontSize: 15,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 60.0,
                    // ),
                    Material(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return BottomBar();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
                //   Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.only(top: 0.0),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text(
                //               "Already have an acount?",
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.w500,
                //               ),
                //             ),
                //             TextButton(
                //               onPressed: () {
                //                 Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                     builder: (_) {
                //                       return My_Login_Screen();
                //                     },
                //                   ),
                //                 );
                //               },
                //               child: Text(
                //                 " Login Now",
                //                 style: TextStyle(
                //                   fontSize: 15,
                //                   fontWeight: FontWeight.w500,
                //                   color: Colors.red,
                //                   // decoration: TextDecoration.underline,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
