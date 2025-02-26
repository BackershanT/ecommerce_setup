import 'package:ecommerce_setup/src/core/constants/size/kwidth.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/check_out_screen.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/size/kheight.dart';
import 'cart_page.dart';

class ProductDetailedScreen extends StatelessWidget {
  const ProductDetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(children: [
        MainCard(
            height: 400.h,
            width: 375.w,
            backgroundColor: Colors.red,
            radius: 15.r,
            image: '',
            padding: EdgeInsets.all(0),
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MainBackButton(),
              ],
            )),
        MainCard(
            radius: 15.r,
            backgroundColor: Colors.transparent,
            width: 375.w,

            elevation: 0,
            image: '',
            padding: EdgeInsets.all(0),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sportwear Set',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '80',
                        style: TextStyle(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'color',
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 34.h,
                            width: 34.w,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                          ),
                          Container(
                            height: 34.h,
                            width: 34.w,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                          Container(
                            height: 34.h,
                            width: 34.w,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey, shape: BoxShape.circle),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(color: Colors.grey),
                          ),
                          kHeight10,
                          Row(
                            spacing: 5,
                            children: [
                              ChoiceChip(label: Text('S'), selected: false),
                              kWidth10,
                              ChoiceChip(label: Text('M'), selected: true),
                              kWidth10,
                              ChoiceChip(label: Text('L'), selected: false),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  kHeight20,
                  ExpansionTile(title: Text('Description'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sportwear is no longer under culture. It is no longer meant for casual hanging. It is for all-round tone matches today.',
                        ),
                      )
                    ],
                  ),
                  ExpansionTile(title: Text('Review'),
                    children: [
                      ListTile(
                        leading: CircleAvatar(),
                        title: Text('Jennifer Ross'),
                        subtitle: Text('Great product!'),
                      ),
                      ListTile(
                        leading: CircleAvatar(),
                        title: Text('Miay Alhora'),
                        subtitle: Text('I love it, highly recommend!'),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ]),
      bottomNavigationBar: MainCard(
        radius: 15.r,
        image: '',
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        width: double.infinity,
        child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
            },
            child: Text(
              'Add to Cart',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            )),
      ),
    ));
  }
}
