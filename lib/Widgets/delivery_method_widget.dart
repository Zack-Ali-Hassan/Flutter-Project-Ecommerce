import 'package:flutter/material.dart';

class Delivery_Methods_Widget extends StatelessWidget {
  const Delivery_Methods_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(
        10.0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        onTap: () {
          print("Clicked delivery method...");
        },
        child: Container(
          width: 115,
          height: 75,
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  "BAJAAJ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "2-3 days",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
