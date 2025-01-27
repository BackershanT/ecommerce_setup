
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainBackButton extends StatelessWidget {
  const MainBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),child:
      Card(
      elevation: 8,
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100)
        ),
          child:
          IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined,size: 17,)),

      ))
    ) ;
  }}