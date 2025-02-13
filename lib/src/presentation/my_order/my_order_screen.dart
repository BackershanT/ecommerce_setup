import 'dart:math';

import 'package:ecommerce_setup/src/presentation/my_order/sub_screens/cancelled_screen.dart';
import 'package:ecommerce_setup/src/presentation/my_order/sub_screens/delivered_screen.dart';
import 'package:ecommerce_setup/src/presentation/my_order/sub_screens/detailed_card_details.dart';
import 'package:ecommerce_setup/src/presentation/my_order/sub_screens/pending_screen.dart';
import 'package:flutter/material.dart';

import '../main_widget/custom_drawer.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String title = "My Order";
  final String title1 = "Pending";
  final String title2 = "Delivered";
  final String title3 = "Cancelled";
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    ); // 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _scaffoldKey,
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
        title: Text(title),
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
        bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Text(title1),
              ),
              Tab(
                child: Text(title2),
              ),
              Tab(
                child: Text(title3),
              ),
            ]),

      ),
      body: TabBarView(
        controller:_tabController,
        children: [
          PendingScreen(onTap: () {
                   },),
          DeliveredScreen(onTap: () {  },),
          CancelledScreen(onTap: () {  },),

        ],),
    );
  }
}
