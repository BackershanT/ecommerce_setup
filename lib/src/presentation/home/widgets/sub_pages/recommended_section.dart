import 'package:ecommerce_setup/src/core/utils/drawer_list.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/size/kheight.dart';
import '../see_all_screen.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Recommended',
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
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 10,
            children: [
              for (int i = 0; i < drawerIcons1.length; i++)
                RecommendedCard(
                    title: 'White fashion hoodie',
                    price: '29.00',
                    image: 'image')
            ],
          ))
    ]);
  }
}
