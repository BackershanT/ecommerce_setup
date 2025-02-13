import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedCardDetails extends StatelessWidget {
  const DetailedCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text('order Id'),
        centerTitle: true,
      ),
        body: ListView(children: [
          MainCard(
            width: 327.w,
            height: 92.h,
            padding: EdgeInsets.symmetric(horizontal: 24),
            radius: 15,
            elevation: 5,
            child:
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),),
                    Text('data',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10.sp),),
                  ],
                ),
                Container(
                  width: 50.w,
                  height: 50.h,
                  child:
                Image.asset('assets/icons/order/delivered.png'
                  ))


              ],
            ),)
          )

        ],));
  }}