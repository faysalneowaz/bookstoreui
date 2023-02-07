import 'package:bookstore/screen/maindashboard/bottommenuitem/discoverpage.dart';
import 'package:bookstore/screen/maindashboard/bottommenuitem/librarypage.dart';
import 'package:bookstore/screen/maindashboard/bottommenuitem/profilepage.dart';
import 'package:bookstore/screen/maindashboard/bottommenuitem/storepage.dart';
import 'package:bookstore/screen/maindashboard/bottommenuitem/wishlistpage.dart';
import 'package:flutter/material.dart';

class MainDashScreen extends StatefulWidget {
  const MainDashScreen({super.key});

  @override
  State<MainDashScreen> createState() => _MainDashScreenState();
}

class _MainDashScreenState extends State<MainDashScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _BottommunuOptions = <Widget>[
    DiscoverScreen(),
    LibraryScreen(),
    WishlistScreen(),
    StoreScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: const Color(0xFFFF6EA1),
        unselectedItemColor: const Color(0xFFE5E5E5),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: _BottommunuOptions.elementAt(_selectedIndex),
    );
  }
}
