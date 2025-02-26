import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final String discountrate;
  const ProductListCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.discountrate, });

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child:
          MainCard(
            width: 150.w,
            height: 186.h,
            elevation: 0,
            padding: EdgeInsets.all(0),
            child: Text(''),
            image: '',
            radius: 15.r,
            backgroundColor: Colors.blue,
          ),),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),child:
          Text(
            title,
            style: TextStyle(fontSize: 12.sp),
          ),),
      Padding(padding: EdgeInsets.symmetric(
          horizontal: 10
      ),child:
          Text(
            price,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),),
      Padding(padding: EdgeInsets.symmetric(
          horizontal: 10
      ),child:
          Text(
            discountrate,
            style: TextStyle(fontSize: 10.sp),
          ),)
        ],
      );
  }
}
