import 'package:bookstore/screen/dashboard/dashboard.dart';
import 'package:bookstore/screen/intro/pageone.dart';
import 'package:bookstore/screen/intro/pagethree.dart';
import 'package:bookstore/screen/intro/pagetwo.dart';
import 'package:flutter/material.dart';

class IntroMain extends StatefulWidget {
  const IntroMain({super.key});

  @override
  State<IntroMain> createState() => _IntroMainState();
}

class _IntroMainState extends State<IntroMain> {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1);
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree()
  ];
  int _activePage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WelcomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _activePage = page;
                  });
                },
                itemCount: _pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index % _pages.length];
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: _activePage == index
                            ? BoxDecoration(
                                color: const Color(0xFFFF6EA1),
                                borderRadius: BorderRadius.circular(5),
                              )
                            : BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1,
                                  color: const Color(0xFFFF6EA1),
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _activePage == 2 ? true : false,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const WelcomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF6EA1),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                    right: 24.0,
                    left: 24.0,
                  ),
                ),
                child: const Text("Get Started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
