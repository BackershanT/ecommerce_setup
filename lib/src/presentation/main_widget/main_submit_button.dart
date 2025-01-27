import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainSubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const MainSubmitButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed:onTap , child: Text(title,style: TextStyle(
      fontSize:16.sp,
      fontWeight: FontWeight.bold
    ),
    ),);
  }
}
