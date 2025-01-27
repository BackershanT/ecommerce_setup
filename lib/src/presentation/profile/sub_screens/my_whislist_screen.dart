import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:flutter/material.dart';

import '../../main_widget/custom_drawer.dart';


class MyWhislistScreen extends StatefulWidget {
  const MyWhislistScreen({super.key});

  @override
  State<MyWhislistScreen> createState() => _MyWhislistScreenState();
}

class _MyWhislistScreenState extends State<MyWhislistScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, ); // 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String title = "My Whislist";
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text(title),
        centerTitle: true,
        actions:[ Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Image.asset(
              'assets/icons/menus.png',
              scale: 20,
              color: Colors.grey,
            ),
          ),
        ),],
        bottom: TabBar(
          controller: _tabController,
            tabs: [
          Tab(
          child: Text('All Items'),
        ),
          Tab(
          child: Text('Boards'),
        ),
        ]),
      ),
      drawer: CustomDrawer(),
      body: TabBarView(
        controller:_tabController,
        children: [
        Center(child: Icon(Icons.abc),),
        Center(child: Icon(Icons.account_circle_rounded),),
      ],),
    );  }
}


