import 'package:flutter/material.dart';

import '../widget/detail_card.dart';

class CancelledScreen extends StatelessWidget {
  final VoidCallback onTap;

  const CancelledScreen({super.key, required this.onTap, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DetailCard(onTap: (){}, title: 'Cancelled', textColor: Colors.red,)

        ],
      ),
    );
  }
}
