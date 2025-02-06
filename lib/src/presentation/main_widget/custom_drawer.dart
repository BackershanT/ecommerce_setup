import 'package:ecommerce_setup/src/presentation/home/home_page.dart';
import 'package:ecommerce_setup/src/presentation/profile/sub_screens/settings_screen.dart';
import 'package:ecommerce_setup/src/presentation/support/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/drawer_list.dart';
import '../about_us/about_us_screen.dart';
import '../discover/discover_screen.dart';
import '../my_order/my_order_screen.dart';
import '../profile/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final String title1 = "Others";
    final String title2 = 'Raihanath T';
    final String title3 = "backershan.t@gmail.com";
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: ListView(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/icons/profile/avatar.png'),
                  radius: 35,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          title2,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                        Text(
                          title3,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.sp),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          for (int i = 0; i < drawerTitles.length; i++)
            ListTile(
              onTap: () {
                if (i == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else if (i == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiscoverScreen()),
                  );
                } else if (i == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyOrderScreen()),
                  );
                } else if (i == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                }
              },
              leading: Image.asset(
                drawerIcons[i],
                scale: 25,
                color: Colors.grey,
              ),
              title: Text(
                drawerTitles[i],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
            ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                title1,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              )),
          for (int i = 0; i < drawerTitles1.length; i++)
            ListTile(
              onTap: () {
                if (i == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                } else if (i == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SupportScreen()),
                  );
                } else if (i == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsScreen()),
                  );
                }
              },
              leading: Image.asset(
                drawerIcons1[i],
                scale: 25,
                color: Colors.grey,
              ),
              title: Text(
                drawerTitles1[i],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
            ),
        ],
      ),
    );
  }
}
