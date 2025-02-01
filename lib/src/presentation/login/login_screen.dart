import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:ecommerce_setup/src/core/constants/size/kwidth.dart';
import 'package:ecommerce_setup/src/presentation/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bottom_navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 24,),child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start        ,
        children: [
          Text('Log into \nyour Account',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
          kHeight30,
          TextField(
            decoration: InputDecoration(
              labelText: 'Email Address',
              border: UnderlineInputBorder(),
            ),
          ), kHeight20,
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: UnderlineInputBorder(),
            ),
          ),
          kHeight10,
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(),
              ),
            ),
          ),
          kHeight20,
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
              },

              child: Text("LOG IN"),
            ),
          ),
         kHeight20,
          Center(child: Text("or log in with")),
kHeight10,          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(FontAwesomeIcons.apple),
              kWidth16,
              _buildSocialButton(FontAwesomeIcons.google),
              kWidth16,
              _buildSocialButton(FontAwesomeIcons.facebook),
            ],
          ),
kHeight40,          Center(
            child:
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
              },
              child: Text.rich(
                TextSpan(
                  text: "Don’t have an account? ",
                  style: TextStyle(),
                  children: [

                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black26),
      ),
      child: FaIcon(icon, size: 24),
    );
  }
}
