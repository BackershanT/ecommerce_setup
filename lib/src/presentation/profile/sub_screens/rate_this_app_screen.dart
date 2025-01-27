import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

import '../../main_widget/main_submit_button.dart';

class RateThisAppScreen extends StatelessWidget {
  const RateThisAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title="Share your feedback";
    final String title1="What is your opinion of GemStore?";
    final String title2="Would you like to write anything about this product? ....";
    return  Scaffold(
      appBar: AppBar(
        leading: MainBackButton(),
        title: Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(title1,style: TextStyle(fontSize: 14.sp,
          fontWeight: FontWeight.bold),),

          RatingStars(rating: 2.5, editable: true,
          color: Colors.white,),
          MainCard(
            height: 267.h,
            width: 308.w,
            radius: 20,
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical:20 ),child: Text(title2,style: TextStyle(
               fontSize: 12.sp
            ),

            ),

          )),
          MainSubmitButton(onTap: () {  }, title: 'Send FeedBack',)
        ],
      ),
    );
  }
}
