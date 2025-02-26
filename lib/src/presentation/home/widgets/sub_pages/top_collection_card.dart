import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCollectionCard extends StatelessWidget {
  const TopCollectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      child: Text(''),
      height: 194.h,
      width: double.infinity,
      radius: 15.r,
      backgroundColor: Colors.blueGrey,
      image: '',
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 0),
    );
  }
}
