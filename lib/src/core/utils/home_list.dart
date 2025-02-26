import 'package:flutter/material.dart';

import '../../presentation/home/widgets/sub_pages/first_categories.dart';
import '../../presentation/home/widgets/sub_pages/product_detailed_screen.dart';

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
   FirstCategories(),
   FirstCategories(),
    FirstCategories(),


 ];