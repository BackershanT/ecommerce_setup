import 'package:ecommerce_setup/src/core/utils/drawer_list.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/top_collection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/size/kheight.dart';
import '../see_all_screen.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 10,
        children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Top Collection',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SeeAllScreen()),
          );},
          child:
          Text('showall',style: TextStyle(fontSize: 13.sp,color: Colors.grey),),),
      ]),
      kHeight10,
      SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            spacing: 10,
            children: [
              for (int i = 0; i < drawerIcons1.length; i++)
                TopCollectionCard()
            ],
          ))
    ]);
  }
}
