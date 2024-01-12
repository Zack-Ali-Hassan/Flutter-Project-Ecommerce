import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

// import 'package:fluttertoast/fluttertoast.dart';
extension StringEx on String {
  bool get isNotEmail {
    return !this.contains("@gmail.com");
  }
}

extension StringMobile on String {
  bool get isNotMobile {
    return !(this.startsWith("61") && this.length == 9);
  }
}

class My_Signin_Screen extends StatefulWidget {
  const My_Signin_Screen({super.key});

  @override
  State<My_Signin_Screen> createState() => _My_Signin_ScreenState();
}

class _My_Signin_ScreenState extends State<My_Signin_Screen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _address = TextEditingController();
  final String endPonit = "http://192.168.17.69/dalab%20app/products.php";
  clear() {
    _name.clear();
    _email.clear();
    _mobile.clear();
    _address.clear();
  }

  Future registerCustomer() async {
    try {
      http.Response response = await http.post(
        Uri.parse(endPonit),
        body: {
          'action': 'register_customer',
          'name': _name.text,
          'email': _email.text,
          'mobile': _mobile.text,
          'address': _address.text,
        },
      );
      print(response.statusCode);
      print(response.body);
      if (response.body.contains("Register successfully")) {
        var sessionManager = SessionManager();
        await sessionManager.set("name", _name.text);
        await sessionManager.set("email", _email.text);
        await sessionManager.set("mobile", _mobile.text);
        await sessionManager.set("address", _address.text);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Register Successfully"),
          ),
        );
        // clear();
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return BottomBar();
        }));
        // Fluttertoast.showToast(
        //     msg: "Register Successfully",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
      } else {
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error in backend..."),
          ),
        );
      }
    } on SocketException {
      // Fluttertoast.showToast(
      //     msg: "No internet connection",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: SafeArea(
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
                          // ignore: body_might_complete_normally_nullable
                          validator: (val) {
                            if (val != null) {
                              if (val.isEmpty) {
                                return "name required";
                              }
                            }
                          },
                          onSaved: (newVal) {
                            _name.text = newVal!;
                          },
                          controller: _name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            labelText: "Enter name",
                            labelStyle: TextStyle(
                              fontSize: 14,
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
                          // ignore: body_might_complete_normally_nullable
                          validator: (val) {
                            if (val != null) {
                              if (val.isEmpty) {
                                return "email required";
                              }
                              if (val.isNotEmail) {
                                return "Inavalid email!";
                              }
                            }
                          },
                          onSaved: (newVal) {
                            _email.text = newVal!;
                          },
                          controller: _email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            labelText: "Enter email",
                            labelStyle: TextStyle(
                              fontSize: 14,
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
                          // ignore: body_might_complete_normally_nullable
                          validator: (val) {
                            if (val != null) {
                              if (val.isEmpty) {
                                return "mobile required";
                              }
                              if (val.isNotMobile) {
                                return "Inavalid mobile";
                              }
                            }
                          },
                          onSaved: (newVal) {
                            _mobile.text = newVal!;
                          },
                          controller: _mobile,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            labelText: "Enter mobile",
                            labelStyle: TextStyle(
                              fontSize: 14,
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
                          controller: _address,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            labelText: "Enter address",
                            labelStyle: TextStyle(
                              fontSize: 14,
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
                            _formkey.currentState!.save();
                            if (_formkey.currentState!.validate()) {
                              registerCustomer();
                            }
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
      ),
    );
  }
}
