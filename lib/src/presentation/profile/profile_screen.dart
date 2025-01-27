import 'package:ecommerce_setup/src/core/utils/settings_list.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:ecommerce_setup/src/presentation/profile/sub_screens/address_screen.dart';
import 'package:ecommerce_setup/src/presentation/profile/sub_screens/my_whislist_screen.dart';
import 'package:ecommerce_setup/src/presentation/profile/sub_screens/payment_screen.dart';
import 'package:ecommerce_setup/src/presentation/profile/sub_screens/rate_this_app_screen.dart';
import 'package:ecommerce_setup/src/presentation/profile/sub_screens/voucher_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
  final String title1 = 'Raihanath T';
  final String title2 = 'backershan.t@gmail.com';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),child:
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/icons/profile/avatar.png'),
                  radius: 35,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title1,textAlign:TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize:16.sp ),),
                    Text(title2,textAlign:TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize:12.sp ),),

                  ],
                )),
              ],
            ),),
            MainCard(
                height: 440.h,
                width: 327.w,
                radius: 15,
                elevation: 6,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    for (int i = 0; i < profileTitles.length; i++)
                      Column(
                        children: [

                          ListTile(
                            onTap: () {
                              if (i == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AddressScreen()),
                                );
                              } else if (i == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                                );
                              } else if (i == 2) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => VoucherScreen()),
                                );
                              } else if (i == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyWhislistScreen()),
                                );
                              } else if (i == 4) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RateThisAppScreen()),
                                );
                              } else if (i == 5) {
                                Navigator.pop(context);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => LogoutPage()),
                                // );
                              }

                            },
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                            leading: Image.asset(
                              profileIcons[i],
                              scale: 21,
                              color: Colors.grey,
                            ),
                            title: Text(
                              profileTitles[i],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey.withOpacity(0.2),
                          )
                        ],
                      )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}


