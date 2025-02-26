import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/product_detailed_screen.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeautureProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const FeautureProductCard({super.key, required this.title, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductDetailedScreen()),
          );},
          child:
        MainCard(
          image: image,
          backgroundColor: Colors.yellow,
          radius: 15,
          width: 126.w,
          height: 172.h,
          elevation: 2,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        ),),
        Text(title,style: TextStyle(
          fontSize: 12.sp,
        ),),
        Text(price,style: TextStyle(
            fontSize: 18.sp,fontWeight: FontWeight.bold
        ),),
      ],

    );
  }
}
