import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = "Payment";
    return  Scaffold(
      appBar: AppBar(
        leading:MainBackButton() ,
        title: Text(title),
        centerTitle: true,
      ),
    );
  }
}
