import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/home_list.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int _selectedIndex = 0;

  // void _navigateToCategory (BuildContext context, int index){
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=> pages[index]),);
  //
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),child:

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:List.generate(categories.length, (index){
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex ==index ? Colors.brown:Colors.grey[300],

                      ),
                      child: Icon(icons[index],
                        color: _selectedIndex == index ? Colors.white : Colors.grey,size: 24.sp,),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(categories[index],
                      style: TextStyle(
                        color: _selectedIndex ==index ?Colors.black:Colors.grey,
                        fontWeight: _selectedIndex ==index ?FontWeight.bold :FontWeight.normal,
                      ),)
                  ],
                ),
              );
            })
        ),),
        kHeight20,

        Flexible(

          fit: FlexFit.loose,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: pages[_selectedIndex],
          ),
        ),
      ],
    ));
  }
}
