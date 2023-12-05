import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class My_Women_Clothes_Widget extends StatefulWidget {
  const My_Women_Clothes_Widget({super.key});

  @override
  State<My_Women_Clothes_Widget> createState() =>
      _My_Women_Clothes_WidgetState();
}

class _My_Women_Clothes_WidgetState extends State<My_Women_Clothes_Widget> {
  bool display = false;
  int count = 0;
  void increment() {
    setState(() {
      count++;
      display = true;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
      if (count == 0) {
        display = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return My_Product_Info_Screen();
          }));
        },
        child: Container(
          width: 170,
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/34/65/d3/3465d39a3a8ddbfa31f9dc94dd48cee9.jpg"),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Transform(
                            transform: Matrix4.translationValues(0, 10, 0),
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
                                  child: LikeButton(
                                    size: 20,
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 10.0,
                  ),
                  child: Text(
                    "Hijab",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                    left: 12.0,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "50\$",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10.0,
                    top: 5.0,
                    bottom: 10.0,
                  ),
                  child: display == false
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Material(
                              child: InkWell(
                                onTap: () {
                                  increment();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              child: InkWell(
                                onTap: () {
                                  decrement();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.minimize,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 13.0,
                            ),
                            Text(
                              count.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 13.0,
                            ),
                            Material(
                              child: InkWell(
                                onTap: () {
                                  increment();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.add,
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
      ),
    );

    // InkWell(
    //   onTap: () {
    //     Navigator.push(context, MaterialPageRoute(builder: (_) {
    //       return My_Product_Info_Screen();
    //     }));
    //   },
    //   child: Container(
    //     width: double.infinity,
    //     height: 130,
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(
    //         20.0,
    //       ),
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.black.withOpacity(0.1),
    //           blurRadius: 8,
    //           offset: Offset(
    //             1,
    //             1,
    //           ),
    //         ),
    //       ],
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Container(
    //           width: 120,
    //           height: double.infinity,
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               fit: BoxFit.cover,
    //               image: NetworkImage(
    //                   "https://i.pinimg.com/originals/34/65/d3/3465d39a3a8ddbfa31f9dc94dd48cee9.jpg"),
    //             ),
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(
    //                 20.0,
    //               ),
    //               bottomLeft: Radius.circular(
    //                 20.0,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(
    //             top: 10.0,
    //             bottom: 8.0,
    //           ),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Hijab",
    //                 style: TextStyle(
    //                   fontSize: 18,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //               Text(
    //                 "50\$",
    //                 style: TextStyle(
    //                   fontSize: 18,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Material(
    //                     child: InkWell(
    //                       onTap: () {
    //                         print("Clicked minus...");
    //                       },
    //                       child: Container(
    //                         width: 40,
    //                         height: 40,
    //                         alignment: Alignment.center,
    //                         decoration: BoxDecoration(
    //                           color: Colors.white,
    //                           borderRadius: BorderRadius.circular(
    //                             8.0,
    //                           ),
    //                           boxShadow: [
    //                             BoxShadow(
    //                               color: Colors.black.withOpacity(0.2),
    //                               blurRadius: 8,
    //                               offset: Offset(0, 1),
    //                             ),
    //                           ],
    //                         ),
    //                         child: Column(
    //                           children: [
    //                             Icon(
    //                               Icons.minimize,
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     width: 13.0,
    //                   ),
    //                   Text(
    //                     "1",
    //                     style: TextStyle(
    //                       fontSize: 15,
    //                       fontWeight: FontWeight.w600,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     width: 13.0,
    //                   ),
    //                   Material(
    //                     child: InkWell(
    //                       onTap: () {
    //                         print("Clicked plus...");
    //                       },
    //                       child: Container(
    //                         width: 40,
    //                         height: 40,
    //                         alignment: Alignment.center,
    //                         decoration: BoxDecoration(
    //                           color: Colors.white,
    //                           borderRadius: BorderRadius.circular(
    //                             8.0,
    //                           ),
    //                           boxShadow: [
    //                             BoxShadow(
    //                               color: Colors.black.withOpacity(0.2),
    //                               blurRadius: 8,
    //                               offset: Offset(0, 1),
    //                             ),
    //                           ],
    //                         ),
    //                         child: Icon(
    //                           Icons.add,
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Material(
    //                 child: InkWell(
    //                   onTap: () {
    //                     print("Added favorites");
    //                   },
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       shape: BoxShape.circle,
    //                       boxShadow: [
    //                         BoxShadow(
    //                           color: Colors.black.withOpacity(0.5),
    //                           blurRadius: 8,
    //                           offset: Offset(0, 2),
    //                         ),
    //                       ],
    //                     ),
    //                     child: CircleAvatar(
    //                       backgroundColor: Colors.white,
    //                       radius: 15,
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(left: 2.0),
    //                         child: LikeButton(
    //                           size: 20,
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
