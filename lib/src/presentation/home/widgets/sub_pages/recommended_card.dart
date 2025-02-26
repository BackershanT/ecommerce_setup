import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../main_widget/main_card.dart';

class RecommendedCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const RecommendedCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      radius: 15.r,
      height: 66.h,image: '',
      width: 213.w,
      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
      elevation: 0,
      backgroundColor: Colors.grey,
      child: Row(
        spacing: 10,
        children: [
          MainCard(
            child: Text(''),
            backgroundColor: Colors.white,
            width: 66.w,
            height: 66.h,
            radius: 15.r,
            elevation: 0,
            image: image,
            padding: EdgeInsets.symmetric( horizontal: 0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                // 'White fashion hoodie',
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                price,
                // '29.00',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
