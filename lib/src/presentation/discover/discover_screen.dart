import 'dart:math';

import 'package:ecommerce_setup/src/presentation/main_widget/custom_drawer.dart';

import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final String title ="Discover";
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: GestureDetector(
            onTap: () => scaffoldKey.currentState?.openDrawer(),
            child: Image.asset(
              'assets/icons/menus.png',
              scale: 20,
              color: Colors.grey,
            ),
          ),
        ),
        title: Text(title),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Transform.rotate(
                  angle: pi / 20,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/notification');
                      },
                      child: Image.asset(
                        'assets/icons/bell.png',
                        scale: 20,
                        color: Colors.grey,
                      )))),
        ],
      ),
      body: ListView(),
    );
  }
}
