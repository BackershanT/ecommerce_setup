import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:flutter/material.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = "Profile Settings";
    return Scaffold(
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(

                decoration: InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
