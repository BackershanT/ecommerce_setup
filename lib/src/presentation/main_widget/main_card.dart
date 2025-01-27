import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, this.width, this.height, this.radius, this.child, this.backgroundColor, this.padding, this.elevation, });
  final double ? width;
  final double ? height;
  final double ? radius;
  final double ? elevation;
  final Widget ? child;
  final Color ? backgroundColor;
  final EdgeInsetsGeometry ? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding!,child:
        Card(elevation: elevation,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!)),
            child:
      Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius!)
      ),child: child,

      )  ));
  }
}
