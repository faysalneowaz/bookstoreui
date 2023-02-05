import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            "asset/images/intro-3.png",
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
