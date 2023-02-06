import 'package:flutter/material.dart';

class MainDashScreen extends StatefulWidget {
  const MainDashScreen({super.key});

  @override
  State<MainDashScreen> createState() => _MainDashScreenState();
}

class _MainDashScreenState extends State<MainDashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              decoration: BoxDecoration(
                color: Color(0xFFFF6EA1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search books, Authors",
                    hintStyle: TextStyle(color: Colors.black38),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
