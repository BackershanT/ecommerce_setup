import 'package:ecommerce_setup/src/core/colors.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title= "Notifications";
    final String title1= "Good morning! Get 20% Voucher";
    final String title2= "Summer sale up to 20% off. Limited voucher. Get now!! 😜";
    return SafeArea(child:  Scaffold(
appBar: AppBar(
  leading: MainBackButton(),
  title: Text(title),
  centerTitle: true,
),
      body: ListView(
        children: [

       MainCard(

         width: 315.w,
         height: 105.h,
        radius: 15,
        elevation: 8,
        padding: EdgeInsets.symmetric(horizontal: 18,
        vertical: 18),


        child: Padding(padding: EdgeInsets.symmetric(
          horizontal: 10,vertical: 10
        ),child:

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1,
              textAlign:TextAlign.start,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),),
            Text(title2,
              textAlign:TextAlign.start,style: TextStyle(

              fontSize: 14.sp,
            ),)

          ],
        ),

          )),

        ],
      ),

    ));
  }
}
