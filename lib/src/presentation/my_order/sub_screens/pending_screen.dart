import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:ecommerce_setup/src/presentation/my_order/widget/detail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/detail_button.dart';

class PendingScreen extends StatelessWidget {
  final VoidCallback onTap;

  const PendingScreen({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DetailCard(onTap: (){

          }, title: 'Pending',)

        ],
      ),
    );
  }
}
