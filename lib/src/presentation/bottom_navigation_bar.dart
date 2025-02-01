import 'package:ecommerce_setup/src/presentation/discover/discover_screen.dart';
import 'package:ecommerce_setup/src/presentation/home/home_page.dart';
import 'package:ecommerce_setup/src/presentation/my_order/my_order_screen.dart';
import 'package:ecommerce_setup/src/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    HomePage(),
    DiscoverScreen(),
    MyOrderScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/home.png')),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/search.png')),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/bag.png')),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/user.png')),
              label: 'Profile'),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
