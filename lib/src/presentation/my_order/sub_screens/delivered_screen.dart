import 'package:flutter/material.dart';

import '../widget/detail_card.dart';

class DeliveredScreen extends StatelessWidget {
  final VoidCallback onTap;

  const DeliveredScreen({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DetailCard(onTap: (){}, title: 'Delivered',)

        ],
      ),
    );
  }
}
