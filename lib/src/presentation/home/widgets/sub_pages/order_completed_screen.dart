import 'package:ecommerce_setup/src/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/size/kheight.dart';
import '../../../my_order/my_order_screen.dart';

class OrderCompletedScreen extends StatelessWidget {
  const OrderCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Check out'),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag, size: 100),
    kHeight20,
            Text('Order Completed', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          kHeight10,
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrderScreen()));
              },
              child: Text('Thank you for your purchase.\nYou can view your order in "My Orders" section.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(

              onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),

                child: Text('Continue shopping', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}