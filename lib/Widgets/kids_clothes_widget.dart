import 'package:e_commerce_project_app/Screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class My_Kids_Clothes_Widget extends StatefulWidget {
  const My_Kids_Clothes_Widget({super.key});

  @override
  State<My_Kids_Clothes_Widget> createState() => _My_Kids_Clothes_WidgetState();
}

class _My_Kids_Clothes_WidgetState extends State<My_Kids_Clothes_Widget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return My_Product_Info_Screen();
        }));
      },
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(
                1,
                1,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/children-s-bright-clothes-hang-display-baby-clothing-store-girls-section_627829-6483.jpg"),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    20.0,
                  ),
                  bottomLeft: Radius.circular(
                    20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "T-shirt",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "10\$",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
            ),
          ],
        ),
      ),
    );
  }
}











// Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 10.0,
//                   horizontal: 20.0,
//                 ),
//                 child: GridView.builder(
//                   // mainAxisAlignment: MainAxisAlignment.start,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10,
//                   ),
//                   itemCount: 12,
//                   itemBuilder: (context, index) {
//                     return My_Kids_Clothes_Widget();
//                   },
//                 ),
//               ),

// Material(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(20.0),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(20.0),
//         onTap: () {
//           print("clicked...");
//         },
//         child: Container(
//           width: 170,
//           height: 280,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20.0),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: 180,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: NetworkImage(
//                         "https://img.freepik.com/free-photo/children-s-bright-clothes-hang-display-baby-clothing-store-girls-section_627829-6483.jpg"),
//                   ),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Transform(
//                           transform: Matrix4.translationValues(0, 10, 0),
//                           child: InkWell(
//                             onTap: () {
//                               print("Added favorites");
//                             },
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.5),
//                                     blurRadius: 8,
//                                     offset: Offset(0, 2),
//                                   ),
//                                 ],
//                               ),
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 radius: 15,
//                                 child: Icon(
//                                   Icons.favorite_outline,
//                                   size: 20,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 10.0,
//                 ),
//                 child: Text(
//                   "T-shirt",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   bottom: 8.0,
//                   left: 10.0,
//                 ),
//                 child: RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: "15\$",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );