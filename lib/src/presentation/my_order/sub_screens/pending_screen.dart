import 'package:ecommerce_setup/src/presentation/my_order/widget/detail_card.dart';
import 'package:flutter/material.dart';

import 'detailed_card_details.dart';


class PendingScreen extends StatelessWidget {
  final VoidCallback onTap;

  const PendingScreen({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DetailCard(onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailedCardDetails()),
            );

          }, title: 'Pending',textColor: Colors.yellow,)

        ],
      ),
    );
  }
}
