import 'dart:math';

import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/custom_drawer.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/settings_list.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title4="Settings";
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return  Scaffold(
      key: _scaffoldKey,
drawer: CustomDrawer(),
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text(title4),
        centerTitle: true,
      ),
      body:Column(
        children: [
          kHeight20,
          for (int i=0;i<settingsTitles.length;i++)
          Column(
            children: [

              ListTile(
                  leading: Image.asset(settingsIcons[i],color: Colors.grey,scale: 25,),
                  title: Text(settingsTitles[i]),
                  trailing: Icon(Icons.arrow_forward_ios,size: 20,)
              ),
              Divider(),
            ],
          )

        ],
      ),
    );
  }
}
