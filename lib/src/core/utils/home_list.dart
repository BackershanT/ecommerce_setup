import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/forth_categories.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/third_categories.dart';
import 'package:flutter/material.dart';

import '../../presentation/home/widgets/sub_pages/first_categories.dart';
import '../../presentation/home/widgets/sub_pages/second_categories.dart';

List <String> categories =[
  "Women", "Men", "Accessories", "Beauty"
];

List<IconData> icons = [
  Icons.female,
  Icons.male,
  Icons.accessibility_new,
  Icons.brush,
];
 List <Widget> pages =[
   FirstCategories(),
   SecondCategories(),
   ThirdCategories(),
   ForthCategories(),
 ];