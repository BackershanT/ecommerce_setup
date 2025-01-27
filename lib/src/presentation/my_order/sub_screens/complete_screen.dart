import 'package:ecommerce_setup/src/presentation/my_order/widget/detail_card.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends StatelessWidget {
  final VoidCallback onTap;

  const CompleteScreen({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DetailCard(onTap: (){}, title: 'Completed',)

        ],
      ),
    );
  }
}
