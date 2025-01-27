import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/notification/notification_screen.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title ="Discover";
    return Scaffold(
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text(title),
        actions: [
          NotificationScreen()
        ],
      ),
      body: ListView(),
    );
  }
}
