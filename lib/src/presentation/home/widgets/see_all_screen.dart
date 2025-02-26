import 'package:ecommerce_setup/src/core/utils/drawer_list.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/product_list_card.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: MainBackButton(),
          title: Text('data'),
          centerTitle: true,
        ),
        body: SizedBox(
            child: GridView.builder(
          scrollDirection: Axis.horizontal, // Enables horizontal scrolling
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Ensures a single row of items
            childAspectRatio: 2, // Adjust based on card size
            mainAxisSpacing: 3,

            // crossAxisSpacing: 10,// Space between items
          ),
          itemCount: drawerIcons1.length,
          // Row(
          //   children: [
          //   ],
          // ),
          itemBuilder: (BuildContext context, int index) {
            return ProductListCard(
              title: 'title',
              price: 'price',
              image: 'image',
              discountrate: 'discountrate',

            );
          },
        )));
  }
}
