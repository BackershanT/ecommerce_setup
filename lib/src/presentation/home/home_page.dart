import 'dart:math';

import 'package:ecommerce_setup/src/presentation/home/widgets/category_section.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/custom_drawer.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final String title4 = "APPname";
    return Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () => _scaffoldKey.currentState?.openDrawer(),
              child: Image.asset(
                'assets/icons/menus.png',
                scale: 20,
                color: Colors.grey,
              ),
            ),
          ),
          title: Text(title4),
          centerTitle: true,
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
        body: ListView(children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),child:
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
        CategorySection(),
    ]))
    ]));
  }
}
