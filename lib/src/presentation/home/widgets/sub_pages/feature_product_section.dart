import 'package:ecommerce_setup/src/core/utils/drawer_list.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/feauture_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/size/kheight.dart';
import '../see_all_screen.dart';

class FeatureProductSection extends StatelessWidget {

  const FeatureProductSection({super.key, });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Feature Products',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
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
        scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 10,
        children: [
          for (int i = 0; i < drawerIcons1.length; i++)

                FeautureProductCard(
                    title: 'Turtleneck Sweater ', price: '39.50', image: 'image')

        ],
      ))
    ]);
  }
}
