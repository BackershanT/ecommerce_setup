import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final String title = "Delivery Address";
    final String title1 = "SBI Building, street 3, Software Park";
    final String title2 = "Send To";
    final String title3 = "My Office";
    final String title4 = "Edit";
    final String title5 = "MyHome";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: MainBackButton(),
      ),
      body: ListView(
        children: [
          MainCard(
              radius: 20,
              elevation: 8,
              width: 315.w,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: 110.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.circle_outlined),
                      Image.asset(
                        'assets/icons/profile/address/company.png',
                        scale: 20,
                        color: isDarkMode ? Colors.white:Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title2,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          Text(
                            title3,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      TextButton(onPressed: () {}, child: Text(title4))
                    ],
                  ),
                  Text(
                    title1,
                    style: TextStyle(fontSize: 12.sp),
                  )
                ],
              )),
          MainCard(
              radius: 20,
              elevation: 8,
              width: 315.w,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: 110.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.circle_outlined),
                      Image.asset(
                        'assets/icons/profile/address/home.png',
                        scale: 20,
                        color: isDarkMode ? Colors.white:Colors.black,

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title2,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          Text(
                            title5,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      TextButton(onPressed: () {}, child: Text(title4))
                    ],
                  ),
                  Text(
                    title1,
                    style: TextStyle(fontSize: 12.sp),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
