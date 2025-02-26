import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:ecommerce_setup/src/core/constants/size/kwidth.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'order_completed_screen.dart';

class CheckOutScreen extends StatefulWidget {
  // const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlerPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlerPaymentError);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlerExternalWallet);
  }
  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  void _handlerPaymentSuccess(PaymentSuccessResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Payment Successful: ${response.paymentId}')),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OrderCompletedScreen()),
    );

  }

  void _handlerPaymentError(PaymentFailureResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Payment Failed: ${response.message}')),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CheckOutScreen()),
    );
  }

  void _handlerExternalWallet(ExternalWalletResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('External Wallet: ${response.walletName}')),
    );
  }

  void _makePayment() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OrderCompletedScreen()),
    );
    // var options = {
    //   'key': 'YOUR_RAZORPAY_KEY',
    //   'amount': 11000,
    //   'currency': 'INR',
    //   'name': 'Your Store',
    //   'description': 'Payment for order',
    //   'prefill': {'contact': '1234567890', 'email': 'customer@example.com'},
    //
    // };
    // try {
    //   _razorpay.open(options);
    // } catch (e) {
    //   print(e);
    // }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _paymentOptions(),
            kHeight20,
            _priceDetails(),
            kHeight20,
            _termsAndConditions(),
            kHeight20,
            _placeOrderButton(),
          ],
        ),
      ),
    );
  }

  Widget _paymentOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
        Row(
          children: [
            _paymentOptionButton('Cash'),
kWidth10,
            _paymentOptionButton('Credit Card'),
          ],
        ),
      ],
    );
  }

  Widget _paymentOptionButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
    );
  }

  Widget _priceDetails() {
    return Column(
      children: [
        _priceRow('Product price', '\$110'),
        _priceRow('Shipping', 'Freeship'),
        Divider(),
        _priceRow('Subtotal', '\$110', isBold: true),
      ],
    );
  }

  Widget _priceRow(String title, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 16.sp, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        Text(value, style: TextStyle(fontSize: 16.sp, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
      ],
    );
  }

  Widget _termsAndConditions() {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        Text('I agree to Terms and conditions', style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }

  Widget _placeOrderButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 14),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        onPressed:()=> _makePayment(),
        child: Text('Place my order', style: TextStyle(fontSize: 16.sp)),
      ),
    );
  }
}
