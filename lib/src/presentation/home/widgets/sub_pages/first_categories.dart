import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/see_all_screen.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/feature_product_section.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/recommended_section.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/top_collection_section.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstCategories extends StatelessWidget {
  const FirstCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
kHeight10,
        MainCard(
          image: 'assets/icons/bag.png',
          height: 168.h,
          radius: 15.r,
          backgroundColor: Colors.red,
          child: null,
          elevation: 5,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        kHeight20,
        FeatureProductSection(),
        kHeight20,
        MainCard(
          width: double.infinity,
          height: 141.h,
          image: '',
          elevation: 0,
          radius: 15,
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        ),
        kHeight20,
        RecommendedSection(),
        kHeight20,

        TopCollectionSection(),
      ],
    );
  }
}
