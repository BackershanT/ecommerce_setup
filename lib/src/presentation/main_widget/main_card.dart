import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final double? elevation;
  final Widget? child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final String ? image;
  const MainCard({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.child,
    this.backgroundColor,
    this.padding,
    this.elevation,  this.image,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding!,
        child: Card(
            elevation: elevation,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!)),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover),
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(radius!)),
              child: child,
            )));
  }
}
