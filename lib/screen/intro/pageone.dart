import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            "asset/images/intro_1.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
            "Share Your Favourite Books\nWith Your Family And Friends",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
