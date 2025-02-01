import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:ecommerce_setup/src/core/constants/size/kwidth.dart';
import 'package:ecommerce_setup/src/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create\nyour account",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight30,
            _buildTextField("Enter your name"),
            kHeight15,
            _buildTextField("Email address"),
            kHeight15,
            _buildTextField("Password", isPassword: true),
            kHeight15,
            _buildTextField("Confirm password", isPassword: true),
            kHeight25,
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("SIGN UP"),
              ),
            ),
            kHeight20,
            Center(child: Text("or sign up with")),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(FontAwesomeIcons.apple),
                kWidth16,
                _buildSocialButton(FontAwesomeIcons.google),
                kWidth16,
                _buildSocialButton(FontAwesomeIcons.facebook),
              ],
            ),
            kHeight30,
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    children: [
                      TextSpan(
                        text: "Log In",
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

  Widget _buildTextField(String label, {bool isPassword = false}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: UnderlineInputBorder(),
      ),
      obscureText: isPassword,
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
