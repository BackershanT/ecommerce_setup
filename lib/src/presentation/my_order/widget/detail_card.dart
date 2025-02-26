import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../main_widget/main_card.dart';
import 'detail_button.dart';

class DetailCard extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color ? textColor;


  const DetailCard({super.key, required this.onTap, required this.title, this.textColor});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      image: '',
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 200.h,
        width: 336.w,
        elevation: 5,
        radius: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                  Text(
                    '13/05/2024',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tracking No:  IK287368838',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quantity:',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  Text(
                    'Subtotal: 220',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14.sp,color: textColor),
                  ),
                  DetailButton(
                    title: 'Details',
                    onTap: onTap,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
