import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            "asset/images/intro-2.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
            "Buy And Sell Books With Us",
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
